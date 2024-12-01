#include "animal.hpp"
#include <cmath>
#include <iostream>
#include <fstream>
#include <sstream>
#include <iomanip>

Lenia::Animal::Animal(const AnimalInfo& info, const u8 scale) : 
	m_info(info), 
	m_scale(scale), 
	m_kernelBuffer(Buffer<f32>(BufferBinding::KERNEL, m_info.m_r * m_info.m_r * m_scale * m_scale)) {
	getCells();
	computeKernel();
}

Lenia::Animal::~Animal() noexcept {
	glDeleteTextures(1, &m_kernelTexture);
}

void Lenia::Animal::resize(const u8 scale) {
	m_scale = scale;
	m_kernelBuffer.m_data.resize(m_info.m_r * m_info.m_r * scale * scale);
	computeKernel();
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
	// std::ofstream out("../resources/animal.txt");
	// out << std::fixed << std::setprecision(2);
	// for (size_t i = 0; i < m_info.m_w; ++i) {
	// 	for (size_t j = 0; j < m_info.m_h; ++j) {
	// 		out << buffer[j * w + i] << " ";
	// 	}
	// 	out << "\n";
	// }
	return buffer;
}

// std::vector<f32> Lenia::Animal::getCells() noexcept {
// 	char* str = const_cast<char*>(m_info.m_rle.c_str());
// 	i32 count = 0, num = 0;
// 	f32* buffer = new f32[0xFFFF];
// 	std::fill(buffer, buffer + 0xFFFF, 0.f);
// 	u32 arr_len = 0, row_size = 0, last_len = 0, num_rows = 1;
// 	while (*str && *str != '!') {
// 		count = num = 0;
// 		if (*str == '$') {
// 			if (arr_len - last_len > row_size)
// 				row_size = arr_len - last_len;
// 			buffer[arr_len++] = -1;
// 			last_len = arr_len;
// 			str++;
// 			num_rows++;
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
// 		for (i32 i = 0; i < count; i++)
// 			buffer[arr_len++] = num / 255.f;
// 		str++;
// 	}
// 	size_t size = (size_t)num_rows * row_size;
// 	auto new_buffer = std::vector<f32>(size, 0);
// 	for (size_t i = 0, j = 0, count = 0; j < size; i++, j++) {
// 		if (buffer[i] != -1) {
// 			new_buffer[j] = buffer[i];
// 			count++;
// 		}
// 		else {
// 			i32 diff = row_size - (u32)count;
// 			for (i32 k = 0; k < diff; k++)
// 				new_buffer[j + k] = 0;
// 			count = 0;
// 			j += diff - 1ll;
// 		}
// 	}
// 	m_w = row_size;
// 	m_h = num_rows;
// 	std::ofstream out("../resources/orbium.txt");
// 	out << std::fixed << std::setprecision(2);
// 	for (size_t i = 0; i < m_h; ++i) {
// 		for (size_t j = 0; j < m_h; ++j) {
// 			out << buffer[j * m_w + i] << " ";
// 		}
// 		out << "\n";
// 	}
// 	delete[] buffer;
// 	return new_buffer;
// }

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
		if (!i && !j) continue;
		f32 dist = (f32)sqrt(i * i + j * j);
		if (!dist || dist > (f32)(m_info.m_r * m_scale)) continue;
		m_normalization += applyKernelShell(dist);
	}
	m_normalization *= m_info.m_dx2;
}


void Lenia::Animal::computeKernel() noexcept {
	computeNormalization();
	const f32 size = m_info.m_r * m_scale;
	auto kernelTexturePixels = std::vector<f32>(size * size * 4);
	for (size_t i = 0; i < size; ++i)
	for (size_t j = 0; j < size; ++j) {
		f32 kernel_shell = applyKernelShell((f32)sqrt(i * i + j * j));
		m_kernelBuffer.m_data[i * size + j] = kernel_shell / m_normalization;
		kernelTexturePixels[(size + i) * size * 2 + (size + j)] = kernel_shell;
		kernelTexturePixels[(size + i) * size * 2 + (size - j)] = kernel_shell;
		kernelTexturePixels[(size - i) * size * 2 + (size + j)] = kernel_shell;
		kernelTexturePixels[(size - i) * size * 2 + (size - j)] = kernel_shell;
	};
	glGenTextures(1, &m_kernelTexture);
    glBindTexture(GL_TEXTURE_2D, m_kernelTexture);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_R8, size * 2, size * 2, 0, GL_RED, GL_FLOAT, &kernelTexturePixels[0]);
	
	constexpr GLint swizzleMask[] = {GL_RED, GL_RED, GL_RED, GL_ONE};
	glTexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_RGBA, swizzleMask);	

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    glBindTexture(GL_TEXTURE_2D, 0);
	m_kernelBuffer.storeDataInShader();
}

std::string Lenia::Taxonomy::to_string() const noexcept {
	return "\n species: " + species + "\n  class: " + _class + "\n  order: " + order + "\n  family: " + family + "\n  subfamily: " + subfamily;
}