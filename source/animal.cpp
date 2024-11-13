#include "lenia/animal.hpp"
#include <cmath>
#include <iostream>
#include <fstream>
#include <sstream>

Lenia::Animal::Animal(const Taxonomy taxonomy, const u32 r, const f32 dt, const f32* beta, const u8 b, const f32 mu, const f32 sigma,
	const KernelCore kn, const GrowthFunction gn, const std::string rle) :
	m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(const_cast<f32*>(beta)), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle) {
	m_w = 0;
	m_h = 0;
	m_dx2 = 1.f;
}

Lenia::Animal::~Animal() {
	glDeleteBuffers(1, &m_kernelBuffer.m_ID);
}

void Lenia::Animal::bind() {
	m_kernelBuffer = Core::Buffer<f32>(Core::BufferBinding::KERNEL, m_r * m_r);
	computeKernel();
	m_kernelBuffer.storeDataInShader();
}

std::unique_ptr<f32[]> Lenia::Animal::getCells() noexcept {
	char* str = const_cast<char*>(m_rle.c_str());
	i32 count = 0, num = 0;
	f32* buffer = new f32[0xFFFF];
	std::fill(buffer, buffer + 0xFFFF, 0.f);
	u32 arr_len = 0, row_size = 0, last_len = 0, num_rows = 1;
	while (*str && *str != '!') {
		count = num = 0;
		if (*str == '$') {
			if (arr_len - last_len > row_size)
				row_size = arr_len - last_len;
			buffer[arr_len++] = -1;
			last_len = arr_len;
			str++;
			num_rows++;
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
		for (i32 i = 0; i < count; i++)
			buffer[arr_len++] = num / 255.f;
		str++;
	}
	size_t size = (size_t)num_rows * row_size;
	std::unique_ptr<f32[]> new_buffer = std::make_unique<f32[]>(size);
	std::fill(new_buffer.get(), new_buffer.get() + size, 0.f);
	for (size_t i = 0, j = 0, count = 0; j < size; i++, j++) {
		if (buffer[i] != -1) {
			new_buffer[j] = buffer[i];
			count++;
		}
		else {
			i32 diff = row_size - (u32)count;
			for (i32 k = 0; k < diff; k++)
				new_buffer[j + k] = 0;
			count = 0;
			j += diff - 1ll;
		}
	}
	delete[] buffer;
	m_w = row_size;
	m_h = num_rows;
	return new_buffer;
}

f32 Lenia::Animal::applyKernelCore(const f32 r, const f32 q) const {
	switch (m_kn) {
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

f32 Lenia::Animal::applyGrowthFunction(const f32 n) const {
	switch (m_gn) {
		default:
		case GrowthFunction::QUAD4:
			return (f32)pow(std::max(0.f, 1.f - (f32)pow(n - m_mu, 2.f) / (9.f * m_sigma * m_sigma)), 4.f) * 2.f - 1.f;
		case GrowthFunction::GAUSS:
			return (f32)exp(-(f32)pow(n - m_mu, 2.f) / (2.f * m_sigma * m_sigma)) * 2.f - 1.f;
		case GrowthFunction::STPZ:
			return std::fabs(n - m_mu) * 2.f - 1.f;
	}
}

f32 Lenia::Animal::applyKernelShell(const f32 r) const {
	const f32 Br = m_b * (r / (f32)m_r);
	const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
	const f32 Kc = applyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
	return (r < m_r) * m_beta[floored] * Kc;
}

f32 Lenia::Animal::getNormalization() const {
	f32 normalization = 0;
	i16 iR = (i16)m_r;
	for (i16 i = -iR; i <= iR; i++)
	for (i16 j = -iR; j <= iR; j++) {
		if (!i && !j) continue;
		f32 dist = (f32)sqrt(i * i + j * j);
		if (!dist || dist > (f32)m_r) continue;
		normalization += applyKernelShell(dist);
	}
	return normalization * m_dx2;
}

void Lenia::Animal::computeKernel() {
	f32 normalization_factor = getNormalization();
	for (size_t i = 0; i < m_r; i++)
	for (size_t j = 0; j < m_r; j++)
		m_kernelBuffer.m_data[i * m_r + j] = applyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
}

std::unordered_map<std::string, Lenia::Animal*> Lenia::Animal::loadAnimalsFromCSV(const u32 scale) {
    std::unordered_map<std::string, Lenia::Animal*> animals;
    std::ifstream file("../resources/animals.csv");
    if (!file.is_open()) {
        std::cerr << "file resources/animals.csv couldn't be opened" << std::endl;
        exit(-1);
    }
    std::string line;
    while (std::getline(file, line)) {
        std::vector<std::string> tokens;
        std::stringstream ss(line);
        std::string token;
        while (std::getline(ss, token, ','))
            tokens.push_back(token);
        const u32 R = (u32)std::stoul(tokens[5]) * scale;
        const f32 dt = 1.f / std::stof(tokens[6]);
        std::stringstream beta_stream(tokens[7]);
        std::vector<f32> vBeta;
        while (std::getline(beta_stream, token, ';'))
            vBeta.push_back(std::stof(token));
        f32* beta = new f32[vBeta.size()];
        std::copy(vBeta.begin(), vBeta.end(), beta);
        const u8 B = static_cast<u8>(vBeta.size());
        const f32 mu = std::stof(tokens[8]);
        const f32 sigma = std::stof(tokens[9]);
        const KernelCore kn = static_cast<KernelCore>(std::stoi(tokens[10]) - 1);
        const GrowthFunction gn = static_cast<GrowthFunction>(std::stoi(tokens[11]) - 1);
        const Taxonomy tax = {tokens[4], tokens[0], tokens[1], tokens[2], tokens[3]};
        Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
        animals.emplace(tokens[4], animal);
    }
    return animals;
}