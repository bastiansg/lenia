#include <thrust/execution_policy.h>
#include <thrust/transform.h>
#include <thrust/transform_reduce.h>
#include "simulation.hpp"
#include <cmath>
#include "cuda_runtime.h"

#define PTR(x) (thrust::raw_pointer_cast(x.data()))


__device__ f32 growth(const f32 f, const f32 mu, const f32 sigma) {
    return 0.1f * (pow(max(0.0f, 1.0f - pow(f - mu, 2.0f) / (9.0f * sigma * sigma)), 4.0f) * 2.0f - 1.0f);
}

__global__ void fftshift(Lenia::c64* inv, Lenia::c64* shifted, i32 N, f32 norm) {

    i32 sEq1 = (N * N + N) / 2;
    i32 sEq2 = (N * N - N) / 2;
    
    i32 xIndex = blockIdx.x * blockDim.x + threadIdx.x;
    i32 yIndex = blockIdx.y * blockDim.y + threadIdx.y;
    
    i32 index = (yIndex * N) + xIndex;

    if (xIndex < N / 2) {
        if (yIndex < N / 2) {
            shifted[index] = inv[index + sEq1];
            shifted[index + sEq1] = inv[index];
        }
    }
    else {
        if (yIndex < N / 2) {
            shifted[index] = inv[index + sEq2];
            shifted[index + sEq2] = inv[index];
        }
    }
}

__device__ Lenia::c64 leniastep(Lenia::c64 field, Lenia::c64 inv, f32 norm, f32 mu, f32 sigma) {
    f32 val = min(max(field.x + growth(inv.x * norm, mu, sigma), 0.f), 1.f);
    return { val, 0.f };
}

__global__ void getBoundingBox(const Lenia::c64 *field, const i32 w, Lenia::BoundingBox *bb) {
    i32 xIndex = blockIdx.x * blockDim.x + threadIdx.x;
    i32 yIndex = blockIdx.y * blockDim.y + threadIdx.y;

    if (xIndex >= w || yIndex >= w) return;

    if (field[yIndex * w + xIndex].x > 0) {
        atomicMin(&bb->m_x0, xIndex);
        atomicMin(&bb->m_y0, yIndex);
        atomicMax(&bb->m_x1, xIndex);
        atomicMax(&bb->m_y1, yIndex);
    }
}

__global__ void getCenterOfMass(const Lenia::c64 *field, const i32 w, const f32 mass, glm::vec2 *out) {
    i32 xIndex = blockIdx.x * blockDim.x + threadIdx.x;
    i32 yIndex = blockIdx.y * blockDim.y + threadIdx.y;

    if (xIndex >= w || yIndex >= w) return;

    atomicAdd(&out->x, field[yIndex * w + xIndex].x * xIndex / mass);
    atomicAdd(&out->y, field[yIndex * w + xIndex].x * yIndex / mass);
}

__global__ static void fftshiftFast(Lenia::c64  * __restrict__ field, Lenia::c64 * __restrict__ inv, i32 N, f32 norm, f32 mu, f32 sigma) {
    i32 sEq1 = (N * N + N) / 2;
    i32 sEq2 = (N * N - N) / 2;
    
    i32 xIndex = blockIdx.x * blockDim.x + threadIdx.x;
    i32 yIndex = blockIdx.y * blockDim.y + threadIdx.y;
    
    i32 index = (yIndex * N) + xIndex;

    if (xIndex < N / 2) {
        if (yIndex < N / 2) {
            field[index] = leniastep(field[index], inv[index + sEq1], norm, mu, sigma);
            field[index + sEq1] = leniastep(field[index + sEq1], inv[index], norm, mu, sigma);
        }
    }
    else {
        if (yIndex < N / 2) {
            field[index] = leniastep(field[index], inv[index + sEq2], norm, mu, sigma);
            field[index + sEq2] = leniastep(field[index + sEq2], inv[index], norm, mu, sigma);
        }
    }
}

void Lenia::Simulation::loadFFT() noexcept {
    m_fftField.resize(m_w * m_h * m_layerCount);
    m_mulfftField.resize(m_w * m_h * m_layerCount);
    m_invfftField.resize(m_w * m_h * m_layerCount);
    m_normfftField.resize(m_w * m_h * m_layerCount);
    m_shiftedfftField.resize(m_w * m_h * m_layerCount);
    m_resultfftField.resize(m_w * m_h * m_layerCount);

    thrust::device_vector<f32> buffer_gpu(m_readBuffer.m_data.begin(), m_readBuffer.m_data.end());
    thrust::transform(
        thrust::device,
        buffer_gpu.begin(),
        buffer_gpu.end(),
        m_resultfftField.begin(),
        [] __device__(const f32 real)
        { return c64{real, 0}; }
    );
    cudaMemcpy(m_fragBuffer, PTR(m_resultfftField), m_numBytesField, cudaMemcpyDeviceToDevice);
    cudaMalloc(&m_cudaBoundingBox, m_layerCount * sizeof(BoundingBox));
    cudaMalloc(&m_cudaCenterOfMassBuffer, m_layerCount * sizeof(glm::vec2));
}

struct CenterOfMassFunctor {
    f32 mass;
    std::size_t w;
    Lenia::c64* field;
    __device__ glm::vec2 operator()(const thrust::tuple<i32, Lenia::c64>& c) {
        i32 yIndex = thrust::get<0>(c) / w;
        i32 xIndex = thrust::get<0>(c) % w;
        Lenia::c64 val = thrust::get<1>(c);
        return { xIndex * val.x / mass, yIndex * val.x / mass };
    }
};

void Lenia::Simulation::updateFFTFast(const Lenia::Animal &animal) noexcept {
    using namespace thrust::placeholders;
    BoundingBox bb{ INT_MAX, INT_MAX, INT_MIN, INT_MIN };
    glm::vec2 com{ 0,0 };
    cudaMemcpy(m_cudaBoundingBox, &bb, sizeof(BoundingBox), cudaMemcpyHostToDevice);
    cudaMemset(m_cudaCenterOfMassBuffer, 0, sizeof(glm::vec2));

    for (std::size_t i = 0; i < m_layerCount * m_size; i += m_size) {
        cufftExecC2C(m_plan, PTR(m_resultfftField) + i, PTR(m_fftField) + i, CUFFT_FORWARD);
        thrust::transform(
            thrust::device,
            animal.m_GPUfftKernel.begin(),
            animal.m_GPUfftKernel.end(),
            m_fftField.begin() + i,
            m_mulfftField.begin() + i,
            _1 * _2
        );
        cufftExecC2C(m_plan, PTR(m_mulfftField) + i, PTR(m_invfftField) + i, CUFFT_INVERSE);
        fftshiftFast<<<m_blocksInGrid, m_threadsPerBlock>>>(
            PTR(m_resultfftField) + i,
            PTR(m_invfftField) + i,
            m_w,
            m_norm,
            animal.m_info.m_mu,
            animal.m_info.m_sigma
        );
        if (i == 0) {
            cudaMemcpy(m_fragBuffer, PTR(m_resultfftField) + i, m_size * sizeof(c64), cudaMemcpyDeviceToDevice);
        }
        else {
            thrust::transform(
                thrust::device,
                m_resultfftField.begin() + i,
                m_resultfftField.begin() + i + m_size,
                m_fragBuffer,
                m_fragBuffer,
                _1 + _2
            );
        }
        f32 mass = thrust::reduce(
            thrust::device,
            m_resultfftField.begin(),
            m_resultfftField.end(),
            c64{ 0, 0 },
            _1 + _2
        ).x;

        thrust::counting_iterator<i32> idx_first(0);
        auto zipped_begin = thrust::make_zip_iterator(thrust::make_tuple(idx_first, m_resultfftField.begin()));
        auto zipped_end = thrust::make_zip_iterator(thrust::make_tuple(idx_first + m_resultfftField.size(), m_resultfftField.end()));
        com = thrust::transform_reduce(
            thrust::device,
            zipped_begin, 
            zipped_end, 
            CenterOfMassFunctor{mass, m_w, PTR(m_resultfftField)},
            glm::vec2{0, 0},
            _1 + _2
        );
        auto error = cudaGetLastError();
        //cudaMemcpy(m_cudaCenterOfMassBuffer, &thrust::get<1>(centerOfMass), sizeof(c64), cudaMemcpyDeviceToDevice);
        error = cudaGetLastError();
        getBoundingBox<<<m_blocksInGrid, m_threadsPerBlock>>>(PTR(m_resultfftField) + i, m_w, m_cudaBoundingBox);
        //getCenterOfMass<<<m_blocksInGrid, m_threadsPerBlock>>>(PTR(m_resultfftField) + i, m_w, mass, m_cudaCenterOfMassBuffer);
        cudaMemcpy(&bb, m_cudaBoundingBox, sizeof(BoundingBox), cudaMemcpyDeviceToHost);
        //cudaMemcpy(&com, m_cudaCenterOfMassBuffer, sizeof(glm::vec2), cudaMemcpyDeviceToHost);
        std::cout << bb.to_string() << "\n";
        std::cout << com.x << " " << com.y << "\n";
    }
}

//void Lenia::Simulation::updateFFT(const Lenia::Animal &animal) noexcept {
//    using namespace thrust::placeholders;
//    thrust::device_vector<c64> local(m_w * m_h);
//
//    cufftExecC2C(m_plan, ptr(m_fftField), ptr(local), CUFFT_FORWARD);
//
//    thrust::transform(
//        thrust::device, 
//        local.begin(),
//        local.end(),
//        animal.m_GPUfftKernel.begin(), 
//        m_mulfftField.begin(), 
//        _1 * _2
//    );
//    
//    cufftExecC2C(m_plan, ptr(m_mulfftField), ptr(m_invfftField), CUFFT_INVERSE);
//    
//    fftshift<<<m_blocksInGrid, m_threadsPerBlock>>>(ptr(m_invfftField), ptr(m_shiftedfftField), m_w, m_norm);
//    
//    thrust::transform(
//        thrust::device,
//        m_fftField.begin(),
//        m_fftField.end(),
//        m_shiftedfftField.begin(),
//        m_resultfftField.begin(),
//        [norm = m_norm, mu = animal.m_info.m_mu, sigma = animal.m_info.m_sigma] __device__ (const c64 old_field, const c64 shifted) { return c64{old_field.x + growth(shifted.x * norm, mu, sigma), 0.f}.clamp(); }
//    );
//
//    m_fftField = m_resultfftField;
//    cudaMemcpy(m_fragBuffer, ptr(m_fftField), m_numBytes, cudaMemcpyDeviceToDevice);
//}