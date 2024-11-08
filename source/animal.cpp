#include <string>
#include "Animal.hpp"
#include <format>

namespace Lenia {
	Animal::Animal() : m_taxonomy({}), m_r(0), m_dt(0.f), m_beta(nullptr),
		m_b(0), m_mu(0.f), m_sigma(0.f), m_kn(KernelCore::QUAD4), m_gn(GrowthFunction::QUAD4), m_w(0), m_h(0), m_rle(""), m_dx2(0.f) {}

	Animal::Animal(const Taxonomy taxonomy, const u32 r, const f32 dt, const f32* beta, const u8 b, const f32 mu, const f32 sigma,
		const KernelCore kn, const GrowthFunction gn, const std::string rle) :
		m_taxonomy(taxonomy), m_r(r), m_dt(dt), m_beta(beta), m_b(b), m_mu(mu), m_sigma(sigma), m_kn(kn), m_gn(gn), m_rle(rle), m_w(0), m_h(0), m_dx2(1.f) {}

	Animal::~Animal() {
		glDeleteBuffers(1, &m_kernelBuffer.m_ID);
	}

	void Animal::Bind() {
		m_kernelBuffer = Buffer<f32>(BufferBinding::KERNEL, m_r * m_r);
		ComputeKernel();
		m_kernelBuffer.updateData();
	}

	constexpr const u32 BUFFER_DEFAULT_SIZE = 0xFFFF;
	constexpr const i8 END_OF_ROW = -1;

	f32* Animal::GetCells() noexcept {
		char* str = const_cast<char*>(m_rle.c_str());
		i32 count = 0, num = 0;
		f32* buffer = new f32[BUFFER_DEFAULT_SIZE];
		std::fill(buffer, buffer + BUFFER_DEFAULT_SIZE, 0.f);
		u32 arr_len = 0, row_size = 0, last_len = 0, num_rows = 1;
		while (*str && *str != '!') {
			count = num = 0;
			if (*str == '$') {
				if (arr_len - last_len > row_size)
					row_size = arr_len - last_len;
				buffer[arr_len++] = END_OF_ROW;
				last_len = arr_len;
				str++;
				num_rows++;
			}
			while (isdigit(*str))
				count = count * 10 + (*str++ - '0');
			if (*str >= 'p' && *str <= 'y')
				num = (*str - 'p') * 24 + *(str++ + 1) - 'A' + 25;
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
		f32* new_buffer = new f32[size];
		std::fill(new_buffer, new_buffer + size, 0.f);
		for (size_t i = 0, j = 0, count = 0; j < size; i++, j++) {
			if (buffer[i] != END_OF_ROW) {
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

	static bool zero(const f32 x) {
		return x > -1e-6 && x < 1e-6;
	}

	f32 Animal::ApplyKernelCore(const f32 r, const f32 q) const {
		switch (m_kn) {
			case KernelCore::QUAD4:
				return (r > 0.f) * (r < 1.f) * (f32)pow(4.f * r * (1.f - r), 4.f);
			case KernelCore::BUMP4: {
				return (r > 0.f) * (r < 1.f) * (f32)exp(4.f - 1.f / (r * (1.f - r)));
			case KernelCore::STPZ:
				return f32(r >= q) * (r <= 1.f - q);
			case KernelCore::LEAK:
				return (r > 0.f) * (r < 1.f) * (f32)exp(-(f32)pow(((r - .5f) / .15f), 2.f) / 2.f);
			default:
				throw std::runtime_error("Invalid KernelCore");
			}
		}
	}

	f32 Animal::ApplyGrowthFunction(const f32 n) const {
		switch (m_gn) {
		case GrowthFunction::QUAD4:
			return (f32)pow(std::max(0.f, 1.f - (f32)pow(n - m_mu, 2.f) / (9.f * m_sigma * m_sigma)), 4.f) * 2.f - 1.f;
		case GrowthFunction::GAUSS:
			return (f32)exp(-(f32)pow(n - m_mu, 2.f) / (2.f * m_sigma * m_sigma)) * 2.f - 1.f;
		case GrowthFunction::STPZ:
			return std::fabs(n - m_mu) * 2.f - 1.f;
		default:
			throw std::runtime_error("Invalid GrowthFunction");
		}
	}

	f32 Animal::ApplyKernelShell(const f32 r) const {
		const f32 Br = m_b * (r / (f32)m_r);
		const i32 floored = std::min(static_cast<i32>(floor(Br)), m_b-1);
		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
		return (r < m_r) * m_beta[floored] * Kc;
	}

	f32 Animal::Normalization() const {
		f32 normalization = 0;
		i16 iR = (i16)m_r;
		for (i16 i = -iR; i <= iR; i++)
		for (i16 j = -iR; j <= iR; j++) {
			if (!i && !j) continue;
			f32 dist = (f32)sqrt(i * i + j * j);
			if (zero(dist) || dist > (f32)m_r) continue;
			normalization += ApplyKernelShell(dist);
		}
		return normalization * m_dx2;
	}
	
	void Animal::ComputeKernel() {
		f32 normalization_factor = Normalization();
		for (size_t i = 0; i < m_r; i++)
		for (size_t j = 0; j < m_r; j++)
			m_kernelBuffer.m_data[i * m_r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	}

	std::string Animal::ToString() {
		f32* cells = GetCells();
		std::string str = std::format("{}\n{}, {}\n", m_taxonomy.species, m_w, m_h);
		for (size_t i = 0; i < m_h; i++) {
			for (size_t j = 0; j < m_w; j++)
				str += std::format("{:.3f} ", cells[i * m_w + j]);
			str += "\n";
		}
		delete[] cells;
		return str;
	}
}