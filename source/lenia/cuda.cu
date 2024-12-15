
#include "cuda_runtime.h"
#include "cufft.h"
#include "thrust/device_vector.h"
#include <array>
#include "device_launch_parameters.h"
#include <iomanip>

#include <stdio.h>
#include <algorithm>
#include <vector>
#include <iostream>
#include <fstream>

#define IDX2R(i,j,N) (((i)*(N))+(j))
__global__ void fftshift_2D(double2* data, int N1, int N2)
{
	int i = threadIdx.y + blockDim.y * blockIdx.y;
	int j = threadIdx.x + blockDim.x * blockIdx.x;

	if (i < N1 && j < N2)
	{
		double a = 1 - 2 * ((i + j) & 1);
		data[IDX2R(i, j, N2)].x *= a;
		data[IDX2R(i, j, N2)].y *= a;
	}
}

static constexpr uint8_t scale = 1;

struct CAnimalInfo {
	const char* species;
	const char* _class;
	const char* order;
	const char* family;
	const char* subfamily;
	const size_t m_r;
	const size_t m_w;
	const size_t m_h;
	const uint8_t m_startingScale;
	const float m_dt;
	const float m_dx2;
	const float m_mu;
	const float m_sigma;
	const std::array<float, 5> m_beta;
	const int B;
	const int m_kn;
	const int m_gn;
	const char* m_rle;
};

constexpr CAnimalInfo OrbiumUnicaudatus {
	"Orbium unicaudatus",
	"Exokernel",
	"Orbiformes",
	"Haplorbinae",
	"O Orbidae",
	13,
	20,
	20,
	10,
	0.1,
	0.005917159763313609,
	0.15,
	0.017,
	{
		1
	},
	1,
	0,
	0,
	"7.MD6.qL$6.pKqEqFURpApBRAqQ$5.VqTrSsBrOpXpWpTpWpUpCrQ$4.CQrQsTsWsApITNPpGqGvL$3.IpIpWrOsGsBqXpJ4.LsFrL$A.DpKpSpJpDqOqUqSqE5.ExD$qL.pBpTT2.qCrGrVrWqM5.sTpP$.pGpWpD3.qUsMtItQtJ6.tL$.uFqGH3.pXtOuR2vFsK5.sM$.tUqL4.GuNwAwVxBwNpC4.qXpA$2.uH5.vBxGyEyMyHtW4.qIpL$2.wV5.tIyG3yOxQqW2.FqHpJ$2.tUS4.rM2yOyJyOyHtVpPMpFqNV$2.HsR4.pUxAyOxLxDxEuVrMqBqGqKJ$3.sLpE3.pEuNxHwRwGvUuLsHrCqTpR$3.TrMS2.pFsLvDvPvEuPtNsGrGqIP$4.pRqRpNpFpTrNtGtVtStGsMrNqNpF$5.pMqKqLqRrIsCsLsIrTrFqJpHE$6.RpSqJqPqVqWqRqKpRXE$8.OpBpIpJpFTK!"
};

static constexpr CAnimalInfo m_info = OrbiumUnicaudatus;
static constexpr size_t scaled_r = m_info.m_r * scale;


static std::vector<float> getCells() noexcept {
	auto str = m_info.m_rle;
	uint32_t count = 0, num = 0, w = m_info.m_w;
	auto buffer = std::vector<float>(m_info.m_w * m_info.m_h, 0.f);
	uint32_t row = 0, col = 0;
	while (*str != '!' && str) {
		count = num = 0;
		if (*str == '$') {
			if (col != w)
				std::fill(buffer.begin() + (row * w + col), buffer.begin() + (row * w + w - 1), 0);
			col = 0;
			str++;
			row++;
		}
		while (isdigit(*str))
			count = count * 10 + (*str++ - '0');
		if (*str >= 'p' && *str <= 'y') {
			num = (*str - 'p') * 24 + *(str + 1) - 'A' + 25;
			str++;
		}
		else if (*str == 'o') {
			num = 255;
		}
		else if (*str == '.' || *str == 'b') {
			num = 0;
		}
		else if (*str >= 'A' && *str <= 'X') {
			num = *str - 'A' + 1;
		}
		count = count ? count : 1;
		for (uint32_t i = 0; i < count; i++)
			buffer[row * w + col++] = num / 255.f;
		str++;
	}
	return buffer;
}

static float calcKernelCoreAt(const float r) {
	return (r > 0.f) * (r < 1.f) * std::pow(4.f * r * (1.f - r), 4.f);
}

static float calcKernelAt(const float r) {
	const float Br = static_cast<float>(m_info.B) * (r / static_cast<float>(scaled_r));
	const float floored = std::min(static_cast<int>(std::floor(Br)), m_info.B - 1);
	const float Kc = calcKernelCoreAt(std::min(std::fmodf(Br, 1.f), 1.f));
	return (r < scaled_r) * m_info.m_beta[floored] * Kc;
}

static std::vector<float> getKernelShell() {
	auto buffer = std::vector<float>(scaled_r * scaled_r * 4);
	float normalization = 0;
	for (size_t i = 0; i < scaled_r; i++)
	for (size_t j = 0; j < scaled_r; j++)
	{
		const float val = calcKernelAt(std::sqrt(i * i + j * j));
		normalization += 4 * val;
		buffer[(scaled_r + i) * scaled_r * 2 + (scaled_r + j)] = val;
		buffer[(scaled_r + i) * scaled_r * 2 + (scaled_r - j)] = val;
		buffer[(scaled_r - i) * scaled_r * 2 + (scaled_r + j)] = val;
		buffer[(scaled_r - i) * scaled_r * 2 + (scaled_r - j)] = val;
	}
	for (auto& f : buffer) {
		f /= normalization;
	}
	return buffer;
}

static std::vector<float> upscale_array(const std::vector<float> &buffer, const int w, const int h, const int scale) {
	auto temp = std::vector<float>(w * scale * h * scale, 0.f);
	for (size_t i = 0; i < h; i++)
	for (size_t j = 0; j < w; j++)
	for (size_t k = 0; k < scale; k++)
	for (size_t l = 0; l < scale; l++)
	{
		temp[(i * scale + k) * w * scale + (j * scale + l)] = buffer[i * w + j];
	}
	return temp;
}

static void place_cells(std::vector<float>& field, const std::vector<float> &cells, const int x, const int y, const int f_w, const int c_w, const int c_h) {
	for (size_t i = 0; i < c_h; i++)
	for (size_t j = 0; j < c_w; j++) {
		field[(i + y) * f_w + j + x] = cells[i * c_w + j];
	}
}

static std::vector<float> pad_kernel(const std::vector<float>& kernel, int r, int new_width) {
	std::vector<float> new_kernel = std::vector<float>(new_width * new_width, 0.f);

	int r_start = (new_width - r) / 2;
	int r_stop = (new_width + r) / 2;

	for (size_t i = 0; i < new_width; ++i)
	for (size_t j = 0; j < new_width; ++j) {
		if (i > r_start && i < r_stop && j > r_start && j < r_stop) {
			new_kernel[i * new_width + j] = kernel[(i - r_start) * r + (j - r_start)];
		}
	}

	return new_kernel;
}

static void dump_array_to_file(const std::vector<float>& buffer, int w, int h, const std::string &name = "out.txt") {
	std::ofstream out(name);
	out << w << " " << h << "\n";
	for (const auto& num : buffer)
		out << num << " ";
	out.close();
}

__global__ void multiplyBuffers(cufftComplex *kernel, cufftComplex *field, int size) {
	int idx = blockIdx.x * blockDim.x + threadIdx.x;

	if (idx < size) {
		cufftComplex x = kernel[idx];
		cufftComplex y = field[idx];

		field[idx].x = x.x * y.x - x.y * y.y;
		field[idx].y = x.x * y.y + x.y * y.x; 
	}
}

int main()
{
	const int field_size = 20 * scale;

	const std::vector<float> kernel = getKernelShell();
	//dump_array_to_file(kernel, scaled_r * 2, scaled_r * 2, "kernel.txt");

	std::vector<float> field = std::vector<float>(field_size * field_size, 0.f);

	std::vector<float> cells = getCells();
	//dump_array_to_file(cells, m_info.m_w, m_info.m_h, "cells.txt");

	cells = upscale_array(cells, m_info.m_w, m_info.m_h, scale);
	//dump_array_to_file(cells, m_info.m_w * scale, m_info.m_h * scale, "upscaled.txt");

	place_cells(field, cells, 0, 0, field_size, m_info.m_w * scale, m_info.m_h * scale);
	dump_array_to_file(field, field_size, field_size, "field.txt");

	std::vector<float> padded = pad_kernel(kernel, scaled_r * 2, field_size);
	dump_array_to_file(padded, field_size, field_size, "padded.txt");

	const int threadsPerBlock = 256;
	const int blocksPerGrid = (field.size() + threadsPerBlock - 1) / threadsPerBlock;

	cufftHandle normal, inv;

	cufftPlan2d(&normal, field_size, field_size, CUFFT_C2C);
	cufftPlan2d(&inv, field_size, field_size, CUFFT_C2C);

	thrust::device_vector<cufftComplex> kernel_gpu(field.size());
	thrust::device_vector<cufftComplex> field_fft_gpu(field.size());
	thrust::device_vector<cufftComplex> field_gpu(field.size());
	std::vector<cufftComplex> host_output(field.size());

	std::vector<float> real_output(field.size());

	for (size_t i = 0; i < field.size(); i++)
	{
		field_gpu[i] = { field[i], 0.f };
		kernel_gpu[i] = { padded[i], 0.f };
	}

	for (int i = 0; i < 1; ++i) {
		cufftExecC2C(normal, thrust::raw_pointer_cast(field_gpu.data()), thrust::raw_pointer_cast(field_fft_gpu.data()), CUFFT_FORWARD);
	}

	cudaMemcpy(host_output.data(), thrust::raw_pointer_cast(field_fft_gpu.data()), field_fft_gpu.size() * sizeof(cufftComplex), cudaMemcpyDeviceToHost);

	for (size_t i = 0; i < field.size(); ++i) {
		real_output[i] = host_output[i].x;
	}

	dump_array_to_file(real_output, field_size, field_size, "cuda.txt");

	cufftDestroy(normal);
	cufftDestroy(inv);
	return 0;
}