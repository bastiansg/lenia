#include <thrust/execution_policy.h>
#include <thrust/transform.h>
#include <thrust/transform_reduce.h>
#include "simulation.hpp"
#include <cmath>
#include "cuda_runtime.h"
#include <vector>
#include <future>

#define PTR(x) (thrust::raw_pointer_cast(x.data()))


__device__ f32 growth(const f32 f, const f32 mu, const f32 sigma) {
    return 0.1f * (pow(max(0.0f, 1.0f - pow(f - mu, 2.0f) / (9.0f * sigma * sigma)), 4.0f) * 2.0f - 1.0f);
}

__device__ Lenia::c64 leniastep(Lenia::c64 field, Lenia::c64 inv, f32 norm, f32 mu, f32 sigma) {
    f32 val = min(max(field.x + growth(inv.x * norm, mu, sigma), 0.f), 1.f);
    return { val, 0.f };
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
    m_fftField.resize(m_w * m_h * m_hostLayerInfoBuffer.m_data.size());
    m_mulfftField.resize(m_w * m_h * m_hostLayerInfoBuffer.m_data.size());
    m_invfftField.resize(m_w * m_h * m_hostLayerInfoBuffer.m_data.size());
    //m_normfftField.resize(m_w * m_h * m_hostLayerInfoBuffer.m_data.size());
    //m_shiftedfftField.resize(m_w * m_h * m_hostLayerInfoBuffer.m_data.size());
    m_resultfftField.resize(m_w * m_h * m_hostLayerInfoBuffer.m_data.size());

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
}

__host__ __device__ Lenia::LayerInfo Lenia::LayerInfo::operator+(const LayerInfo &rhs)  {
    const f32 mass = m_mass + rhs.m_mass;
    const glm::vec2 centerOfMass = m_centerOfMass + rhs.m_centerOfMass;
    const Lenia::BoundingBox bb = Lenia::BoundingBox{
        thrust::min(m_boundingBox.m_x0, rhs.m_boundingBox.m_x0),
        thrust::min(m_boundingBox.m_y0, rhs.m_boundingBox.m_y0),
        thrust::max(m_boundingBox.m_x1, rhs.m_boundingBox.m_x1),
        thrust::max(m_boundingBox.m_y1, rhs.m_boundingBox.m_y1),
    };
    return LayerInfo{bb, centerOfMass, mass};
}

struct FieldTupleToLayerInfoFunctor {
    std::size_t w;
    Lenia::c64* field;
    const Lenia::BoundingBox invalid{i32(w) + 1, i32(w) + 1, -1, -1};
    
    __host__ __device__ Lenia::LayerInfo operator()(const thrust::tuple<i32, Lenia::c64>& c) {
        i32 yIndex = thrust::get<0>(c) / w;
        i32 xIndex = thrust::get<0>(c) % w;
        Lenia::BoundingBox bb;
        Lenia::c64 val = thrust::get<1>(c);
        if (val.x) {
            bb = Lenia::BoundingBox{ xIndex, yIndex, xIndex, yIndex };
        } else {
            bb = invalid;
        }
        return Lenia::LayerInfo{bb, glm::vec2{xIndex * val.x, yIndex * val.x }, val.x};
    }
};

struct LayerInfoAddFunctor {
    __device__ Lenia::LayerInfo operator()(const Lenia::LayerInfo &lhs, const Lenia::LayerInfo &rhs) {
        const f32 mass = lhs.m_mass + rhs.m_mass;
        const glm::vec2 centerOfMass = lhs.m_centerOfMass + rhs.m_centerOfMass;
        const Lenia::BoundingBox bb = Lenia::BoundingBox{
            thrust::min(lhs.m_boundingBox.m_x0, rhs.m_boundingBox.m_x0),
            thrust::min(lhs.m_boundingBox.m_y0, rhs.m_boundingBox.m_y0),
            thrust::max(lhs.m_boundingBox.m_x1, rhs.m_boundingBox.m_x1),
            thrust::max(lhs.m_boundingBox.m_y1, rhs.m_boundingBox.m_y1),
        };
        return Lenia::LayerInfo{ bb, centerOfMass, mass };
    }
};

void Lenia::Simulation::updateFFTFast(const Lenia::Animal &animal) noexcept {
    using namespace thrust::placeholders;
    for (std::size_t i = 0; i < m_hostLayerInfoBuffer.m_data.size(); ++i) {
        const std::size_t offset = i * m_size;
        cufftExecC2C(m_plan, PTR(m_resultfftField) + offset, PTR(m_fftField) + offset, CUFFT_FORWARD);
        thrust::transform(
            thrust::device,
            animal.m_GPUfftKernel.begin(),
            animal.m_GPUfftKernel.end(),
            m_fftField.begin() + offset,
            m_mulfftField.begin() + offset,
            _1 * _2
        );
        cufftExecC2C(m_plan, PTR(m_mulfftField) + offset, PTR(m_invfftField) + offset, CUFFT_INVERSE);
        fftshiftFast<<<m_blocksInGrid, m_threadsPerBlock>>>(
            PTR(m_resultfftField) + offset,
            PTR(m_invfftField) + offset,
            m_w,
            m_norm,
            animal.m_info.m_mu,
            animal.m_info.m_sigma
        );
        if (i == 0) {
            cudaMemcpy(m_fragBuffer, PTR(m_resultfftField) + offset, m_size * sizeof(c64), cudaMemcpyDeviceToDevice);
        }
        else {
            thrust::transform(
                thrust::device,
                m_resultfftField.begin() + offset,
                m_resultfftField.begin() + offset + m_size,
                m_fragBuffer,
                m_fragBuffer,
                _1 + _2
            );
        }
        thrust::counting_iterator<i32> idx_first(0);
        auto zipped_begin = thrust::make_zip_iterator(thrust::make_tuple(idx_first, m_resultfftField.begin() + offset));
        auto zipped_end = thrust::make_zip_iterator(thrust::make_tuple(idx_first + m_size, m_resultfftField.begin() + offset + m_size));
        LayerInfo info = thrust::transform_reduce(
            thrust::device,
            zipped_begin, 
            zipped_end, 
            FieldTupleToLayerInfoFunctor{m_w},
            LayerInfo{BoundingBox(INT_MAX, INT_MAX, INT_MIN, INT_MIN), glm::vec2{}, 0.f },
            _1 + _2
        );
        info.m_centerOfMass /= info.m_mass;
        m_hostLayerInfoBuffer[i] = info;
    }
    cudaMemcpy(m_gpuLayerInfoBuffer, m_hostLayerInfoBuffer.m_data.data(), m_numBytesLayerData, cudaMemcpyHostToDevice);
    std::cout << m_hostLayerInfoBuffer[0].m_boundingBox.to_string() << "\n";
}