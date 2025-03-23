#include <thrust/execution_policy.h>
#include <thrust/transform.h>
#include "simulation.hpp"

#include "cuda_runtime.h"

__host__ __device__ void Lenia::Simulation::loadFFT() noexcept {
    cufftHandle normal;
    cufftPlan2d(&normal, m_w, m_h, CUFFT_C2C);

    m_fftField.resize(m_w * m_h);
    thrust::device_vector<f32> buffer_gpu(m_readBuffer.m_data.begin(), m_readBuffer.m_data.end());
    thrust::transform(
        thrust::device,
        buffer_gpu.begin(),
        buffer_gpu.end(),
        m_fftField.begin(),
        [] __device__(const f32 real)
        { return c64{real, 0}; });
    cufftExecC2C(normal, thrust::raw_pointer_cast(m_fftField.data()), thrust::raw_pointer_cast(m_fftField.data()), CUFFT_FORWARD);
}

__host__ __device__ void Lenia::Simulation::updateFFT(const Lenia::Animal &animal) noexcept {
    using namespace thrust::placeholders;
    cufftHandle normal;
    cufftPlan2d(&normal, m_w, m_h, CUFFT_C2C);

    m_mulfftField.resize(m_w * m_h);
    thrust::transform(thrust::device, m_fftField.begin(), m_fftField.end(), animal.m_GPUfftKernel.begin(), m_mulfftField.begin(), _1 * _2);
}