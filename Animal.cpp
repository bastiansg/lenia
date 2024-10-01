#include <string>
#include "Animal.h"
#include <cassert>

namespace Lenia {
	Animal::Animal() : name(""), _class(""), order(""), family(""), subfamily(""), R(0), dt(0), beta(nullptr), B(0), mu(0), sigma(0), kn(KernelCore::QUAD4), gn(GrowthFunction::QUAD4), W(0), H(0), RLE("") {}

	Animal::Animal (const std::string name, const std::string _class, const std::string order, const std::string family, const std::string subfamily,
		const u32 R, const f32 dt, const f32* beta, const u8 B, const f32 mu, const f32 sigma, const KernelCore kn, const GrowthFunction gn, std::string RLE) :
		name(name), _class(_class), order(order), family(family), subfamily(subfamily), R(R), dt(dt), beta(beta), B(B), mu(mu), sigma(sigma), kn(kn), gn(gn), W(0), H(0), RLE(RLE) {}


	std::unique_ptr<f32[]> Animal::GetCells() noexcept {
		char* str = (char*)this->RLE.c_str();
		int count = 0, num = 0, array_len = 0;
		f32* buffer = new f32[50000];
		std::fill(buffer, buffer + 50000, 0.f);
		int arr_len = 0;
		u32 row_size = 0, last_len = 0, num_rows = 1;
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
			if (*str >= 'p' && *str <= 'y')
				num = ((*str++ - 'p') * 24) + *str - 'A' + 25;
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
			for (int i = 0; i < count; i++)
				buffer[arr_len++] = num / 255.0f;
			str++;
		}
		std::unique_ptr<f32[]> new_buffer = std::make_unique<f32[]>(num_rows * row_size);
		std::fill(new_buffer.get(), new_buffer.get() + (num_rows * row_size), 0.f);
		for (u32 i = 0, j = 0, count = 0; j < num_rows * row_size; i++, j++) {
			if (buffer[i] != -1) {
				new_buffer[j] = buffer[i];
				count++;
			}
			else {
				int diff = row_size - count;
				for (int k = 0; k < diff; k++)
					new_buffer[j + k] = 0;
				count = 0;
				j += diff - 1;
			}
		}
		delete[] buffer;
		this->W = row_size;
		this->H = num_rows;
		return new_buffer;
	}


	static bool zero(const f32 r) {
		return r > -1e-6 && r < 1e-6;
	}

	f32 Animal::ApplyKernelCore(const f32 r, const f32 q) const {
		switch (kn) {
			case KernelCore::QUAD4:
				return (r > 0.f) * (r < 1.f) * std::powf(4.f * r * (1.f - r), 4.f);
			case KernelCore::BUMP4: {
				return (r > 0.f) * (r < 1.f) * std::expf(4.f - 1.f / (r * (1.f - r)));
			case KernelCore::STPZ:
				return (r >= q) * (r <= 1.f - q);
			case KernelCore::LEAK:
				return (r > 0.f) * (r < 1.f) * std::expf(-std::powf(((r - .5f) / .15f), 2.f) / 2.f);
			default:
				throw std::runtime_error("Invalid KernelCore");
			}
		}
	}

	f32 Animal::ApplyGrowthFunction(const f32 n) const {
		switch (gn) {
		case GrowthFunction::QUAD4:
			return std::powf(std::fmax(0.f, 1.f - std::powf(n - mu, 2.f) / (9.f * sigma * sigma)), 4.f) * 2.f - 1.f;
		case GrowthFunction::GAUSS:
			return std::expf(-std::powf(n - mu, 2.f) / (2.f * sigma * sigma)) * 2.f - 1.f;
		case GrowthFunction::STPZ:
			return std::fabs(n - mu) * 2.f - 1.f;
		default:
			throw std::runtime_error("Invalid GrowthFunction");
		}
	}

	f32 Animal::ApplyKernelShell(const f32 r) const {
		const f32 Br = B * r;
		const u32 floored = static_cast<u32>(floor(Br));
		if (floored >= B) return 0.0;
		const f32 Kc = ApplyKernelCore(fmod(Br, 1.0));
		return beta[floored] * Kc;
	}

	f32 Animal::Normalization() const {
		f32 normalization = 0;
		i16 iR = (i16)R;
		for (i16 i = -iR; i <= iR; i++)
		for (i16 j = -iR; j <= iR; j++) {
			if (!i && !j) continue;
			f32 dist = sqrtf(i * i + j * j);
			if (!dist || dist > (f32)R) continue;
			dist /= (f32)R;
			normalization += this->ApplyKernelShell(dist);
		}
		return normalization;
	}
	 
	f32* Animal::ComputeKernel() const {
		f32* kernel_buffer = new f32[R * R + 2 * R + 1];
		f32 normalization_factor = this->Normalization();
		for (u16 i = 0; i <= R; i++)
		for (u16 j = 0; j <= R; j++)
			kernel_buffer[i * R + j] = ApplyKernelShell(sqrt(i * i + j * j) / R) / normalization_factor;
		return kernel_buffer;
	}
}