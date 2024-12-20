#include "animal.hpp"
#include <cmath>
#include <iostream>
#include <fstream>
#include <sstream>
#include <iomanip>

Lenia::Animal::Animal(const AnimalInfo &info, const u8 scale) : 
	m_info(info), 
	m_scale(scale), 
	m_kernelBuffer(Buffer<f32>(BufferBinding::KERNEL, m_info.m_r * m_info.m_r * m_scale * m_scale)) {
	computeKernel();
	computeCellTexture();
}

Lenia::Animal::~Animal() noexcept {
	glDeleteTextures(1, &m_kernelTexture);
	glDeleteTextures(1, &m_paddedKernelTexture);
	glDeleteTextures(1, &m_fftKernelTexture);
}

void Lenia::Animal::resize(const u8 scale) {
	m_scale = scale;
	m_kernelBuffer.m_data.resize(m_info.m_r * m_info.m_r * scale * scale);
	computeKernel();
	computeCellTexture();
}

std::vector<f32> Lenia::Animal::getCells() const noexcept {
	auto str = m_info.m_rle.begin();
	u32 count = 0, num = 0, w = m_info.m_w;
	auto buffer = std::vector<f32>(m_info.m_w * m_info.m_h, 0.f); 
	u32 row = 0, col = 0;
	while (*str != '!' && str != m_info.m_rle.end()) {
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
		for (u32 i = 0; i < count; i++)
			buffer[row * w + col++] = num / 255.f;
		str++;
	}
	return buffer;
}

f32 Lenia::Animal::applyKernelCore(const f32 r, const f32 q) const noexcept {
	switch (m_info.m_kn) {
		default:
		case KernelCore::QUAD4:
			return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
		case KernelCore::BUMP4:
			return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
		case KernelCore::STPZ:
			return f32(r >= q) * (r <= 1.f - q);
		case KernelCore::LEAK:
			return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
	}
}

f32 Lenia::Animal::applyGrowthFunction(const f32 n) const noexcept {
	switch (m_info.m_gn) {
		default:
		case GrowthFunction::QUAD4:
			return (f32)pow(std::max(0.f, 1.f - (f32)pow(n - m_info.m_mu, 2.f) / (9.f * m_info.m_sigma * m_info.m_sigma)), 4.f) * 2.f - 1.f;
		case GrowthFunction::GAUSS:
			return (f32)exp(-(f32)pow(n - m_info.m_mu, 2.f) / (2.f * m_info.m_sigma * m_info.m_sigma)) * 2.f - 1.f;
		case GrowthFunction::STPZ:
			return std::fabs(n - m_info.m_mu) * 2.f - 1.f;
	}
}

f32 Lenia::Animal::applyKernelShell(const f32 r) const noexcept {
	const f32 Br = m_info.m_beta.size() * (r / (f32)(m_info.m_r * m_scale));
	const i32 floored = std::min(static_cast<i32>(floor(Br)), static_cast<i32>(m_info.m_beta.size() - 1));
	const f32 Kc = applyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	return (r < (m_info.m_r * m_scale)) * m_info.m_beta[floored] * Kc;
}

void Lenia::Animal::computeNormalization() noexcept {
	m_normalization = 0;
	i16 iR = (i16)(m_info.m_r * m_scale);
	for (i16 i = -iR; i <= iR; i++)
	for (i16 j = -iR; j <= iR; j++) {
		f32 dist = (f32)sqrt(i * i + j * j);
		if (!dist || dist > (f32)(m_info.m_r * m_scale)) continue;
		m_normalization += applyKernelShell(dist);
	}
	m_normalization *= m_info.m_dx2;
}


void Lenia::Animal::computeKernel() noexcept {
	computeNormalization();
	const f32 r = m_info.m_r * m_scale;
	const f32 w = r * 2;
	auto kernelTexturePixels = std::vector<f32>(w * w);
	for (size_t i = 0; i < r; ++i)
	for (size_t j = 0; j < r; ++j) {
		f32 kernel_shell = applyKernelShell((f32)sqrt(i * i + j * j));
		m_kernelBuffer[i * r + j] = kernel_shell / m_normalization;
		kernelTexturePixels[(r + i) * w + (r + j)] = kernel_shell;
		kernelTexturePixels[(r + i) * w + (r - j)] = kernel_shell;
		kernelTexturePixels[(r - i) * w + (r + j)] = kernel_shell;
		kernelTexturePixels[(r - i) * w + (r - j)] = kernel_shell;
	};
	constexpr GLint mask[] = {GL_RED, GL_RED, GL_RED, GL_ONE};
	Lenia::createTexture(&m_kernelTexture, &kernelTexturePixels[0], w, w, mask);
	m_kernelBuffer.storeDataInShader();
}

void Lenia::Animal::computeCellTexture() noexcept {
	const std::vector<f32> cells = getCells();
	std::vector<f32> upscaled_cells = std::vector<f32>(m_info.m_w * m_scale * m_info.m_h * m_scale);
	for (size_t i = 0; i < m_info.m_h; ++i)
	for (size_t j = 0; j < m_info.m_w; ++j)
	for (size_t k = 0; k < m_scale; ++k)
	for (size_t l = 0; l < m_scale; ++l) {
		const size_t index = (i * m_scale + k) * m_info.m_w * m_scale + (j * m_scale + l);
		upscaled_cells[index] = cells[i * m_info.m_w + j];
	}
	const GLint mask[] = {GL_RED, GL_RED, GL_RED, GL_RED};
	Lenia::createTexture(&m_cellTexture, &upscaled_cells[0], m_info.m_w * m_scale, m_info.m_h * m_scale, mask);
}

void Lenia::Animal::computePaddedKernelTexture(const std::size_t new_width) noexcept {
	std::vector<f32> new_kernel = std::vector<f32>(new_width * new_width);

	const std::size_t r = m_info.m_r * m_scale;
	const std::size_t r_stop = (new_width / 2 + r);
	const std::size_t offset = new_width / 2;

	for (size_t i = 0; i < r; ++i)
	for (size_t j = 0; j < r; ++j) {
		if (i < r_stop && j < r_stop) {
			const f32 old = m_kernelBuffer[i * r + j] * 10000;
			new_kernel[(offset + i) * new_width + (offset + j)] = old;
			new_kernel[(offset + i) * new_width + (offset - j)] = old;
			new_kernel[(offset - i) * new_width + (offset + j)] = old;
			new_kernel[(offset - i) * new_width + (offset - j)] = old;
		}
	}
	const GLint mask[] = {GL_RED, GL_RED, GL_RED, GL_RED};
	Lenia::createTexture(&m_paddedKernelTexture, &new_kernel[0], new_width, new_width, mask);
	Lenia::createTexture(&m_fftKernelTexture, new_width, new_width);
}

std::string Lenia::Taxonomy::to_string() const noexcept {
	return "\n species: " + species + "\n  class: " + _class + "\n  order: " + order + "\n  family: " + family + "\n  subfamily: " + subfamily;
}