#include <string>
#include "Animal.h"
#include <format>

namespace Lenia {
	Animal::Animal() : Name(""), Class(""), Order(""), Family(""), Subfamily(""), R(0), Dt(0.f), Beta(nullptr), 
		B(0), Mu(0.f), Sigma(0.f), Kn(KernelCore::QUAD4), Gn(GrowthFunction::QUAD4), W(0), H(0), RLE(""), Dx2(0.f), Kernel(nullptr), KernelBuffer(0) {}

	Animal::Animal (const std::string name, const std::string _class, const std::string order, const std::string family, const std::string subfamily,
		const u32 R, const f32 dt, const f32* beta, const u8 B, const f32 mu, const f32 sigma, const KernelCore kn, const GrowthFunction gn, const std::string RLE) :
		Name(name), Class(_class), Order(order), Family(family), Subfamily(subfamily), R(R), Dt(dt), Beta(beta), 
		B(B), Mu(mu), Sigma(sigma), Kn(kn), Gn(gn), W(0), H(0), RLE(RLE), Dx2(1.f / (R * R)), Kernel(nullptr), KernelBuffer(0) {
	}

	Animal::~Animal() {
		glDeleteBuffers(1, &KernelBuffer);
	}

	void Animal::Bind() {
		ComputeKernel();
		Lenia::InitBuffer<f32>(&KernelBuffer, Kernel.get(), (size_t)R * R, 2);
	}

	constexpr const u32 BUFFER_DEFAULT_SIZE = 50000u;
	constexpr const i8 END_OF_ROW = -1;

	std::unique_ptr<f32[]> Animal::GetCells() noexcept {
		char* str = (char*)this->RLE.c_str();
		i32 count = 0, num = 0, array_len = 0;
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
		std::unique_ptr<f32[]> new_buffer = std::make_unique<f32[]>(size);
		std::fill(new_buffer.get(), new_buffer.get() + size, 0.f);
		for (size_t i = 0, j = 0, count = 0; j < size; i++, j++) {
			if (buffer[i] != END_OF_ROW) {
				new_buffer[j] = buffer[i];
				count++;
			}
			else {
				i32 diff = row_size - count;
				for (i32 k = 0; k < diff; k++)
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

	static bool zero(const f32 x) {
		return x > -1e-6 && x < 1e-6;
	}

	f32 Animal::ApplyKernelCore(const f32 r, const f32 q) const {
		switch (Kn) {
			case KernelCore::QUAD4:
				return (r > 0.f) * (r < 1.f) * std::powf(4.f * r * (1.f - r), 4.f);
			case KernelCore::BUMP4: {
				return (r > 0.f) * (r < 1.f) * std::expf(4.f - 1.f / (r * (1.f - r)));
			case KernelCore::STPZ:
				return f32(r >= q) * (r <= 1.f - q);
			case KernelCore::LEAK:
				return (r > 0.f) * (r < 1.f) * std::expf(-std::powf(((r - .5f) / .15f), 2.f) / 2.f);
			default:
				throw std::runtime_error("Invalid KernelCore");
			}
		}
	}

	f32 Animal::ApplyGrowthFunction(const f32 n) const {
		switch (Gn) {
		case GrowthFunction::QUAD4:
			return std::powf(std::fmax(0.f, 1.f - std::powf(n - Mu, 2.f) / (9.f * Sigma * Sigma)), 4.f) * 2.f - 1.f;
		case GrowthFunction::GAUSS:
			return std::expf(-std::powf(n - Mu, 2.f) / (2.f * Sigma * Sigma)) * 2.f - 1.f;
		case GrowthFunction::STPZ:
			return std::fabs(n - Mu) * 2.f - 1.f;
		default:
			throw std::runtime_error("Invalid GrowthFunction");
		}
	}

	f32 Animal::ApplyKernelShell(const f32 r) const {
		const f32 Br = B * (r / (f32)R);
		const i32 floored = std::min(static_cast<i32>(floor(Br)), B-1);
		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
		return (r < R) * Beta[floored] * Kc;
	}

	f32 Animal::Normalization() const {
		f32 normalization = 0;
		i16 iR = (i16)R;
		for (i16 i = -iR; i <= iR; i++)
		for (i16 j = -iR; j <= iR; j++) {
			if (!i && !j) continue;
			f32 dist = (f32)sqrt(i * i + j * j);
			if (zero(dist) || dist > (f32)R) continue;
			normalization += ApplyKernelShell(dist);
		}
		return normalization * Dx2;
	}
	
	void Animal::ComputeKernel() {
		Kernel = std::make_shared<f32[]>((size_t)(R * R));
		f32 normalization_factor = Normalization();
		for (size_t i = 0; i < R; i++)
		for (size_t j = 0; j < R; j++)
			Kernel[i * R + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	}

	std::string Animal::ToString() {
		std::unique_ptr<f32[]> cells = GetCells();
		std::string str = std::format("{}\n{}, {}\n", Name, W, H);
		for (size_t i = 0; i < H; i++) {
			for (size_t j = 0; j < W; j++)
				str += std::format("{:.3f} ", cells[i * W + j]);
			str += "\n";
		}
		return str;
	}
}