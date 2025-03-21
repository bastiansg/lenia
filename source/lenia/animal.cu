#include <thrust/device_vector.h>
#include <thrust/execution_policy.h>
#include <thrust/host_vector.h>

#include <cub/cub.cuh>

#include "animal.hpp"
#include "cuda_runtime.h"
#include "cufft.h"
#include "device_launch_parameters.h"

void Lenia::Animal::computeFFTKernel(const std::size_t w) noexcept {
    cufftHandle normal;
    cufftPlan2d(&normal, w, w, CUFFT_C2C);
    std::vector<c64> out(w * w);

    thrust::device_vector<f32> buffer_gpu(m_paddedKernel.begin(), m_paddedKernel.end());
    thrust::device_vector<cufftComplex> fft_gpu(w * w);
    thrust::transform(
        thrust::device,
        buffer_gpu.begin(),
        buffer_gpu.end(),
        fft_gpu.begin(),
        [] __device__(const f32 real) { return cufftComplex{real, 0}; });
    cufftExecC2C(normal, thrust::raw_pointer_cast(fft_gpu.data()), thrust::raw_pointer_cast(fft_gpu.data()), CUFFT_FORWARD);
    cudaMemcpy(out.data(), thrust::raw_pointer_cast(fft_gpu.data()), w * w * sizeof(cufftComplex), cudaMemcpyDeviceToHost);
    cudaDeviceSynchronize();
}
