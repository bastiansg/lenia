#include <thrust/execution_policy.h>

#include "animal.hpp"
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

void Lenia::Animal::computeFFTKernel(const std::size_t w) noexcept {
    cufftHandle normal;
    cufftPlan2d(&normal, w, w, CUFFT_C2C);

    thrust::device_vector<f32> buffer_gpu(m_paddedKernel.begin(), m_paddedKernel.end());
    thrust::transform(
        thrust::device,
        buffer_gpu.begin(),
        buffer_gpu.end(),
        m_GPUfftKernel.begin(),
        [] __device__(const f32 real) { return cufftComplex{real, 0}; });
    cufftExecC2C(normal, thrust::raw_pointer_cast(m_GPUfftKernel.data()), thrust::raw_pointer_cast(m_GPUfftKernel.data()), CUFFT_FORWARD);
    cudaMemcpy(m_fftKernel.data(), thrust::raw_pointer_cast(m_GPUfftKernel.data()), w * w * sizeof(cufftComplex), cudaMemcpyDeviceToHost);
    cudaDeviceSynchronize();
}
