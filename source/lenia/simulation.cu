#include <thrust/execution_policy.h>
#include <thrust/transform.h>
#include "simulation.hpp"
#include <cmath>
#include "cuda_runtime.h"

__device__ f32 growth(const f32 f, const f32 mu, const f32 sigma) {
    return 0.1f * (pow(max(0.0f, 1.0f - pow(f - mu, 2.0f) / (9.0f * sigma * sigma)), 4.0f) * 2.0f - 1.0f);
}

__global__ void fftshift(Lenia::c64* data, i32 N) {

    i32 sEq1 = (N * N + N) / 2;
    i32 sEq2 = (N * N - N) / 2;
    
    i32 xIndex = blockIdx.x * blockDim.x + threadIdx.x;
    i32 yIndex = blockIdx.y * blockDim.y + threadIdx.y;
    
    i32 index = (yIndex * N) + xIndex;

    Lenia::c64 regTemp;

    if (xIndex < N / 2) {
        if (yIndex < N / 2) {
            regTemp = data[index];
            data[index] = data[index + sEq1];
            data[index + sEq1] = regTemp;
        }
    }
    else {
        if (yIndex < N / 2) {
            regTemp = data[index];
            data[index] = data[index + sEq2];
            data[index + sEq2] = regTemp;
        }
    }
}

void Lenia::Simulation::loadFFT() noexcept {
    m_fftField.resize(m_w * m_h);
    m_mulfftField.resize(m_w * m_h);
    m_invfftField.resize(m_w * m_h);
    m_normfftField.resize(m_w * m_h);
    m_shiftedfftField.resize(m_w * m_h);
    m_resultfftField.resize(m_w * m_h);

    thrust::device_vector<f32> buffer_gpu(m_readBuffer.m_data.begin(), m_readBuffer.m_data.end());
    thrust::transform(
        thrust::device,
        buffer_gpu.begin(),
        buffer_gpu.end(),
        m_fftField.begin(),
        [] __device__(const f32 real)
        { return c64{real, 0}; }
    );
}

void Lenia::Simulation::updateFFTFast(const Lenia::Animal &animal) noexcept {

}

void Lenia::Simulation::updateFFT(const Lenia::Animal &animal) noexcept {
    using namespace thrust::placeholders;
    thrust::device_vector<f32> abs(m_w * m_h);
    thrust::device_vector<c64> local(m_w * m_h);
    f32 mu = animal.m_info.m_mu;
    f32 sigma = animal.m_info.m_sigma;

    cufftExecC2C(m_plan, thrust::raw_pointer_cast(m_fftField.data()), thrust::raw_pointer_cast(local.data()), CUFFT_FORWARD);

    thrust::transform(
        thrust::device, 
        local.begin(),
        local.end(),
        animal.m_GPUfftKernel.begin(), 
        m_mulfftField.begin(), 
        _1 * _2
    );
    
    cufftExecC2C(m_plan, thrust::raw_pointer_cast(m_mulfftField.data()), thrust::raw_pointer_cast(m_invfftField.data()), CUFFT_INVERSE);
    
    thrust::transform(
        thrust::device,
        m_invfftField.begin(),
        m_invfftField.end(),
        m_normfftField.begin(),
        _1 * m_norm
    );

    m_shiftedfftField = m_normfftField;
    
    fftshift<<<m_blocksInGrid, m_threadsPerBlock>>>(thrust::raw_pointer_cast(m_shiftedfftField.data()), m_w);
    
    thrust::transform(
        thrust::device,
        m_fftField.begin(),
        m_fftField.end(),
        m_shiftedfftField.begin(),
        m_resultfftField.begin(),
        [mu, sigma] __device__ (const c64 old_field, const c64 shifted) { return c64{old_field.x + growth(shifted.x, mu, sigma), 0.f}.clamp(); }
    );

    m_fftField = m_resultfftField;

    thrust::transform(
        thrust::device,
        m_fftField.begin(),
        m_fftField.end(),
        abs.begin(),
        [] __device__ (const c64 complex) { return complex.abs(); }
    );
    cudaMemcpy(m_fragBuffer, thrust::raw_pointer_cast(abs.data()), m_numBytes, cudaMemcpyDeviceToDevice);
}