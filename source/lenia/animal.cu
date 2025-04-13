#include <thrust/execution_policy.h>

#include "animal.hpp"
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

void Lenia::Animal::computeFFTKernel(const std::size_t w, const std::size_t h) noexcept {
    cufftHandle normal;
    cufftPlan2d(&normal, w, h, CUFFT_C2C);

    thrust::device_vector<f32> buffer_gpu(m_paddedKernel.begin(), m_paddedKernel.end());
    thrust::device_vector<f32> abs_buffer(w * h); 
    thrust::device_vector<c64> temp_fft(w * h);
    m_GPUfftKernel.resize(w * h);

    thrust::transform(
        thrust::device,
        buffer_gpu.begin(),
        buffer_gpu.end(),
        temp_fft.begin(),
        [] __device__(const f32 real) { return c64{real, 0}; }
    );
    cufftExecC2C(normal, thrust::raw_pointer_cast(temp_fft.data()), thrust::raw_pointer_cast(m_GPUfftKernel.data()), CUFFT_FORWARD);
    thrust::transform(
        thrust::device,
        m_GPUfftKernel.begin(),
        m_GPUfftKernel.end(),
        abs_buffer.begin(),
        [] __device__(const c64 complex) { return complex.abs(); }
    );
    cudaMemcpy(m_absfftKernel.data(), thrust::raw_pointer_cast(abs_buffer.data()), w * h * sizeof(f32), cudaMemcpyDeviceToHost);
	const GLint mask[] = {GL_RED, GL_RED, GL_RED, GL_RED};
    Lenia::createTexture(&m_fftKernelTexture, m_absfftKernel.data(), w, h, mask);
    cufftDestroy(normal);
}
