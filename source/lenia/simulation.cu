#include <thrust/execution_policy.h>
#include <thrust/transform.h>
#include "simulation.hpp"
#include <cmath>
#include "cuda_runtime.h"

template <typename T>
T* ptr(thrust::device_vector<T> &vec) {
    return thrust::raw_pointer_cast(vec.data());
}

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

__global__ void getBoundingBox(const Lenia::c64 *field, const i32 w, i32 *bb) {
    i32 xIndex = blockIdx.x * blockDim.x + threadIdx.x;
    i32 yIndex = blockIdx.y * blockDim.y + threadIdx.y;

    if (xIndex >= w || yIndex >= w) return;

    if (field[yIndex * w + xIndex].x > 0) {
        atomicMin(bb + 0, xIndex);
        atomicMin(bb + 1, yIndex);
        atomicMax(bb + 2, xIndex);
        atomicMax(bb + 3, yIndex);
    }
}

__global__ void fftshiftFast(Lenia::c64 *field, Lenia::c64 *inv, i32 N, f32 norm, f32 mu, f32 sigma) {
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
        m_fftField.begin(),
        [] __device__(const f32 real)
        { return c64{real, 0}; }
    );
    cudaMemcpy(m_fragBuffer, ptr(m_fftField), m_numBytes, cudaMemcpyDeviceToDevice);
    cudaMalloc(&m_cudaBoundingBox, 4 * sizeof(i32));
}

__global__ void kernelMultiply(const Lenia::c64 *field, const Lenia::c64 *kernel, Lenia::c64 *out, const i32 width) {
    i32 xIndex = blockIdx.x * blockDim.x + threadIdx.x;
    i32 yIndex = blockIdx.y * blockDim.y + threadIdx.y;

    out[(yIndex * width) + xIndex] = field[yIndex * width + xIndex] * kernel[yIndex * width + xIndex % width];
}

void Lenia::Simulation::updateFFTFast(Lenia::Animal &animal) noexcept {
    using namespace thrust::placeholders;
    i32 bb[4] = {INT_MAX, INT_MAX, INT_MIN, INT_MIN};

    cudaMemcpy(m_cudaBoundingBox, &bb, sizeof(bb), cudaMemcpyHostToDevice);

    cufftExecC2C(m_plan, m_fragBuffer, ptr(m_fftField), CUFFT_FORWARD);
    thrust::transform(
        thrust::device, 
        m_fftField.begin(),
        m_fftField.end(),
        animal.m_GPUfftKernel.begin(), 
        m_mulfftField.begin(), 
        _1 * _2
    );
    cufftExecC2C(m_plan, ptr(m_mulfftField), ptr(m_invfftField), CUFFT_INVERSE);
    fftshiftFast<<<m_blocksInGrid, m_threadsPerBlock>>>(
        m_fragBuffer,
        ptr(m_invfftField),
        m_w,
        m_norm,
        animal.m_info.m_mu,
        animal.m_info.m_sigma
    );
    getBoundingBox<<<m_blocksInGrid, m_threadsPerBlock>>>(m_fragBuffer, m_w, m_cudaBoundingBox);
    cudaMemcpy(&bb, m_cudaBoundingBox, sizeof(bb), cudaMemcpyDeviceToHost);
    m_boundingBoxBuffer.m_data.clear();
    m_boundingBoxBuffer.m_data.push_back(Lenia::BoundingBox(bb[0], bb[1], bb[2], bb[3]));
    m_boundingBoxBuffer.storeDataInShader();
}

void Lenia::Simulation::updateFFT(const Lenia::Animal &animal) noexcept {
    using namespace thrust::placeholders;
    thrust::device_vector<c64> local(m_w * m_h);

    cufftExecC2C(m_plan, ptr(m_fftField), ptr(local), CUFFT_FORWARD);

    thrust::transform(
        thrust::device, 
        local.begin(),
        local.end(),
        animal.m_GPUfftKernel.begin(), 
        m_mulfftField.begin(), 
        _1 * _2
    );
    
    cufftExecC2C(m_plan, ptr(m_mulfftField), ptr(m_invfftField), CUFFT_INVERSE);
    
    fftshift<<<m_blocksInGrid, m_threadsPerBlock>>>(ptr(m_invfftField), ptr(m_shiftedfftField), m_w, m_norm);
    
    thrust::transform(
        thrust::device,
        m_fftField.begin(),
        m_fftField.end(),
        m_shiftedfftField.begin(),
        m_resultfftField.begin(),
        [norm = m_norm, mu = animal.m_info.m_mu, sigma = animal.m_info.m_sigma] __device__ (const c64 old_field, const c64 shifted) { return c64{old_field.x + growth(shifted.x * norm, mu, sigma), 0.f}.clamp(); }
    );

    m_fftField = m_resultfftField;
    cudaMemcpy(m_fragBuffer, ptr(m_fftField), m_numBytes, cudaMemcpyDeviceToDevice);
}