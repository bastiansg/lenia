#include "fft.hpp"
#include <cub/cub.cuh>

#include "cuda_runtime.h"
#include "cufft.h"
#include <thrust/device_vector.h>
#include "device_launch_parameters.h"


// static constexpr uint8_t scale = 1;

// static std::vector<float> getCells() noexcept {
// 	auto str = m_info.m_rle;
// 	uint32_t count = 0, num = 0, w = m_info.m_w;
// 	auto buffer = std::vector<float>(m_info.m_w * m_info.m_h, 0.f);
// 	uint32_t row = 0, col = 0;
// 	while (*str != '!' && str) {
// 		count = num = 0;
// 		if (*str == '$') {
// 			if (col != w)
// 				std::fill(buffer.begin() + (row * w + col), buffer.begin() + (row * w + w - 1), 0);
// 			col = 0;
// 			str++;
// 			row++;
// 		}
// 		while (isdigit(*str))
// 			count = count * 10 + (*str++ - '0');
// 		if (*str >= 'p' && *str <= 'y') {
// 			num = (*str - 'p') * 24 + *(str + 1) - 'A' + 25;
// 			str++;
// 		}
// 		else if (*str == 'o') {
// 			num = 255;
// 		}
// 		else if (*str == '.' || *str == 'b') {
// 			num = 0;
// 		}
// 		else if (*str >= 'A' && *str <= 'X') {
// 			num = *str - 'A' + 1;
// 		}
// 		count = count ? count : 1;
// 		for (uint32_t i = 0; i < count; i++)
// 			buffer[row * w + col++] = num / 255.f;
// 		str++;
// 	}
// 	return buffer;
// }

// static float calcKernelCoreAt(const float r) {
// 	return (r > 0.f) * (r < 1.f) * std::pow(4.f * r * (1.f - r), 4.f);
// }

// static float calcKernelAt(const float r) {
// 	const float Br = static_cast<float>(m_info.B) * (r / static_cast<float>(scaled_r));
// 	const float floored = std::min(static_cast<int>(std::floor(Br)), m_info.B - 1);
// 	const float Kc = calcKernelCoreAt(std::min(std::fmodf(Br, 1.f), 1.f));
// 	return (r < scaled_r) * m_info.m_beta[floored] * Kc;
// }

// static std::vector<float> getKernelShell() {
// 	auto buffer = std::vector<float>(scaled_r * scaled_r * 4);
// 	float normalization = 0;
// 	for (size_t i = 0; i < scaled_r; i++)
// 	for (size_t j = 0; j < scaled_r; j++)
// 	{
// 		const float val = calcKernelAt(std::sqrt(i * i + j * j));
// 		normalization += 4 * val;
// 		buffer[(scaled_r + i) * scaled_r * 2 + (scaled_r + j)] = val;
// 		buffer[(scaled_r + i) * scaled_r * 2 + (scaled_r - j)] = val;
// 		buffer[(scaled_r - i) * scaled_r * 2 + (scaled_r + j)] = val;
// 		buffer[(scaled_r - i) * scaled_r * 2 + (scaled_r - j)] = val;
// 	}
// 	for (auto& f : buffer) {
// 		f /= normalization;
// 	}
// 	return buffer;
// }

// static std::vector<float> upscale_array(const std::vector<float> &buffer, const int w, const int h, const int scale) {
// 	auto temp = std::vector<float>(w * scale * h * scale, 0.f);
// 	for (size_t i = 0; i < h; i++)
// 	for (size_t j = 0; j < w; j++)
// 	for (size_t k = 0; k < scale; k++)
// 	for (size_t l = 0; l < scale; l++)
// 	{
// 		temp[(i * scale + k) * w * scale + (j * scale + l)] = buffer[i * w + j];
// 	}
// 	return temp;
// }

// static void place_cells(std::vector<float>& field, const std::vector<float> &cells, const int x, const int y, const int f_w, const int c_w, const int c_h) {
// 	for (size_t i = 0; i < c_h; i++)
// 	for (size_t j = 0; j < c_w; j++) {
// 		field[(i + y) * f_w + j + x] = cells[i * c_w + j];
// 	}
// }

// static std::vector<float> pad_kernel(const std::vector<float>& kernel, int r, int new_width) {
// 	std::vector<float> new_kernel = std::vector<float>(new_width * new_width, 0.f);

// 	int r_start = (new_width - r) / 2;
// 	int r_stop = (new_width + r) / 2;

// 	for (size_t i = 0; i < new_width; ++i)
// 	for (size_t j = 0; j < new_width; ++j) {
// 		if (i > r_start && i < r_stop && j > r_start && j < r_stop) {
// 			new_kernel[i * new_width + j] = kernel[(i - r_start) * r + (j - r_start)];
// 		}
// 	}

// 	return new_kernel;
// }

// static void dump_array_to_file(const std::vector<float>& buffer, std::size_t size, const std::string &name = "out.txt") {
// 	int w = sqrt(size);
// 	std::ofstream out(name);
// 	out << w << " " << w << "\n";
// 	for (const auto& num : buffer)
// 		out << num << " ";
// 	out.close();
// }



 //template <class T>
 //struct GPUBuffer {
 //	thrust::device_vector<T> buffer;
 //	T* p;
 //	std::size_t mem_size;

 //	GPUBuffer() = delete;

 //	GPUBuffer(std::size_t size) : 
 //		buffer(thrust::device_vector<T>(size)),
 //		p(thrust::raw_pointer_cast(buffer.data())),
 //		mem_size(buffer.size() * sizeof(T)) {}

 //	void dump_to_file(const std::string& name) const noexcept {
 //		std::vector<c64> host_output(buffer.size());
 //		std::vector<float> real_output(buffer.size());
 //		cudaMemcpy(host_output.data(), p, mem_size, cudaMemcpyDeviceToHost);

 //		for (size_t i = 0; i < buffer.size(); ++i) {
 //			real_output[i] = sqrt(host_output[i].x * host_output[i].x + host_output[i].y * host_output[i].y);
 //		}
 //		dump_array_to_file(real_output, buffer.size(), name);
 //	}
 //};

// struct c64 : public cufftComplex {        
//     c64() = default;
//     c64(f32 real, f32 imag) {
//         x = real;
//         y = imag;
//     }
//     __device__ c64 operator*(const c64& rhs) const {
//         return { x * rhs.x - y * rhs.y, x * rhs.y + y * rhs.x };
//     }
//     __device__ c64 operator+(const c64& rhs) const {
//         return { x + rhs.x, y + rhs.y };
//     }
//     __device__ c64 operator*(const float rhs) const {
//         return { x * rhs, y * rhs };
//     }
// };

 std::vector<std::complex<f32>> Lenia::fft_r2c(const std::vector<f32>& buffer, const i32 w) {
	 thrust::device_vector<f32> padded_gpu(w * w);
	 padded_gpu.resize(w * w);
	 return std::vector<std::complex<f32>>();
 }

// __device__ c64 growth(c64 f) {
// 	float growth = 0.1f * (pow(max(0.0f, 1.0f - pow(f.x - m_info.m_mu, 2.0f) / (9.0f * m_info.m_sigma * m_info.m_sigma)), 4.0f) * 2.0f - 1.0f);
// 	return { growth, 0.0f };
// }

// __global__ void cufftShift_2D_kernel(c64* data, int N)
// {

// 	int sEq1 = (N * N + N) / 2;
// 	int sEq2 = (N * N - N) / 2;

// 	int xIndex = blockIdx.x * blockDim.x + threadIdx.x;
// 	int yIndex = blockIdx.y * blockDim.y + threadIdx.y;

// 	int index = (yIndex * N) + xIndex;

// 	c64 regTemp;

// 	if (xIndex < N / 2)
// 	{
// 		if (yIndex < N / 2)
// 		{
// 			regTemp = data[index];
// 			data[index] = growth(data[index + sEq1]);
// 			data[index + sEq1] = growth(regTemp);
// 		}
// 	}
// 	else
// 	{
// 		if (yIndex < N / 2)
// 		{
// 			regTemp = data[index];
// 			data[index] = growth(data[index + sEq2]);
// 			data[index + sEq2] = growth(regTemp);
// 		}
// 	}
// }

// int test()
// {
// 	// const int field_size = 128;

// 	// std::vector<float> field = std::vector<float>(field_size * field_size, 0.f);

// 	// const std::vector<float> kernel = getKernelShell();
// 	// //dump_array_to_file(kernel, scaled_r * 2, scaled_r * 2, "kernel.txt");

// 	// std::vector<float> cells = getCells();
// 	// //dump_array_to_file(cells, m_info.m_w, m_info.m_h, "cells.txt");

// 	// cells = upscale_array(cells, m_info.m_w, m_info.m_h, scale);
// 	// //dump_array_to_file(cells, m_info.m_w * scale, m_info.m_h * scale, "upscaled.txt");

// 	// place_cells(field, cells, 0, 0, field_size, m_info.m_w * scale, m_info.m_h * scale);
// 	// //dump_array_to_file(field, field_size, field_size, "field.txt");

// 	// std::vector<float> padded = pad_kernel(kernel, scaled_r * 2, field_size);
// 	// //dump_array_to_file(padded, field_size, field_size, "padded.txt");

// 	dim3 threadsPerBlock(32, 32); 
// 	dim3 blocksInGrid(
// 		(field_size + threadsPerBlock.x - 1) / threadsPerBlock.x,
// 		(field_size + threadsPerBlock.y - 1) / threadsPerBlock.y
// 	);

// 	cufftHandle normal;

// 	cufftPlan2d(&normal, field_size, field_size, CUFFT_C2C);

// 	GPUBuffer<c64> kernel_gpu(field.size());
// 	GPUBuffer<c64> field_gpu(field.size());
// 	GPUBuffer<c64> fft_gpu(field.size());
// 	GPUBuffer<c64> mul_gpu(field.size());
// 	GPUBuffer<c64> shift_gpu(field.size());
// 	GPUBuffer<c64> inv_gpu(field.size());
// 	GPUBuffer<c64> norm_gpu(field.size());
// 	GPUBuffer<c64> out_gpu(field.size());

// 	std::cout << "start copy" << "\n";


// 	for (size_t i = 0; i < field.size(); i++)
// 	{
// 		field_gpu.buffer[i] = { field[i], 0.f };
// 		kernel_gpu.buffer[i] = { padded[i], 0.f };
// 	}

// 	std::cout << "start cuda" << "\n";
// 	cufftExecC2C(normal, kernel_gpu.p, kernel_gpu.p, CUFFT_FORWARD);

// 	float norm = 1.f / static_cast<float>(field.size());


// #ifndef INDIVIDUAL
// 	using namespace thrust::placeholders;
// 	auto start = fft_gpu.buffer.begin();
// 	auto end = fft_gpu.buffer.end();
// 	for (int i = 0; i < 100000; ++i) {
// 		cufftExecC2C(normal, field_gpu.p, fft_gpu.p, CUFFT_FORWARD);
// 		thrust::transform(thrust::device, start, end, kernel_gpu.buffer.begin(), start, _1 * _2);
// 		cufftExecC2C(normal, fft_gpu.p, fft_gpu.p, CUFFT_INVERSE);
// 		thrust::transform(thrust::device, start, end, start, _1 * norm);
// 		cufftShift_2D_kernel << <blocksInGrid, threadsPerBlock >> > (fft_gpu.p, field_size);
// 		thrust::transform(thrust::device, start, end, start, field_gpu.buffer.begin(), _1 + _2);
// 	}

// #else
// 	for (int i = 0; i < 100000; ++i) {
// 		cufftExecC2C(normal, field_gpu.p, fft_gpu.p, CUFFT_FORWARD);
// 		thrust::transform(thrust::device, fft_gpu.buffer.begin(), fft_gpu.buffer.end(), kernel_gpu.buffer.begin(), mul_gpu.buffer.begin(), _1 * _2);
// 		cufftExecC2C(normal, mul_gpu.p, inv_gpu.p, CUFFT_INVERSE);
// 		cudaMemcpy(norm_gpu.p, inv_gpu.p, norm_gpu.mem_size, cudaMemcpyDeviceToDevice);
// 		thrust::transform(thrust::device, norm_gpu.buffer.begin(), norm_gpu.buffer.end(), norm_gpu.buffer.begin(), _1 * norm);
// 		cudaMemcpy(shift_gpu.p, norm_gpu.p, norm_gpu.mem_size, cudaMemcpyDeviceToDevice);
// 		cufftShift_2D_kernel << <blocksInGrid, threadsPerBlock >> > (shift_gpu.p, field_size);
// 		thrust::transform(thrust::device, shift_gpu.buffer.begin(), shift_gpu.buffer.end(), field_gpu.buffer.begin(), out_gpu.buffer.begin(), _1 + _2);
// 	}

// #endif

	
// 	field_gpu.dump_to_file("field_cuda.txt");
// 	fft_gpu.dump_to_file("fft_cuda.txt");
// 	mul_gpu.dump_to_file("mul_cuda.txt");
// 	inv_gpu.dump_to_file("inv_cuda.txt");
// 	norm_gpu.dump_to_file("norm_cuda.txt");
// 	shift_gpu.dump_to_file("growth_cuda.txt");

// 	cufftDestroy(normal);
// 	return 0;
// }