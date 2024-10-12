#include <string>
#include "Animal.hpp"
#include <format>

namespace Lenia {
	Animal::Animal() : taxonomy({}), r(0), dt(0.f), beta(nullptr),
		b(0), mu(0.f), sigma(0.f), kn(KernelCore::QUAD4), gn(GrowthFunction::QUAD4), w(0), h(0), rle(""), dx2(0.f), kernel(nullptr), kernelBuffer(0) {}

	Animal::Animal(const Taxonomy taxonomy, const u32 r, const f32 dt, const f32* beta, const u8 b, const f32 mu, const f32 sigma, 
		const KernelCore kn, const GrowthFunction gn, const std::string rle) :
		taxonomy(taxonomy), r(r), dt(dt), beta(beta), b(b), mu(mu), sigma(sigma), kn(kn), gn(gn), rle(rle), w(0), h(0), dx2(1.f), kernel(nullptr), kernelBuffer(0) {}

	Animal::~Animal() {
		glDeleteBuffers(1, &kernelBuffer);
	}

	void Animal::Bind() {
		ComputeKernel();
		Lenia::InitBuffer<f32>(&kernelBuffer, kernel.get(), r * r, BufferBindings::KERNEL);
	}

	constexpr const u32 BUFFER_DEFAULT_SIZE = 0xFFFF;
	constexpr const i8 END_OF_ROW = -1;

	std::unique_ptr<f32[]> Animal::GetCells() noexcept {
		char* str = (char*)this->rle.c_str();
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
				i32 diff = row_size - (u32)count;
				for (i32 k = 0; k < diff; k++)
					new_buffer[j + k] = 0;
				count = 0;
				j += diff - 1ll;
			}
		}
		delete[] buffer;
		w = row_size;
		h = num_rows;
		return new_buffer;
	}

	static bool zero(const f32 x) {
		return x > -1e-6 && x < 1e-6;
	}

	f32 Animal::ApplyKernelCore(const f32 r, const f32 q) const {
		switch (kn) {
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
		const f32 Br = b * (r / (f32)this->r);
		const i32 floored = std::min(static_cast<i32>(floor(Br)), b-1);
		const f32 Kc = ApplyKernelCore(std::min(fmodf(Br, 1.0), 1.f));
		return (r < this->r) * beta[floored] * Kc;
	}

	f32 Animal::Normalization() const {
		f32 normalization = 0;
		i16 iR = (i16)r;
		for (i16 i = -iR; i <= iR; i++)
		for (i16 j = -iR; j <= iR; j++) {
			if (!i && !j) continue;
			f32 dist = (f32)sqrt(i * i + j * j);
			if (zero(dist) || dist > (f32)r) continue;
			normalization += ApplyKernelShell(dist);
		}
		return normalization * dx2;
	}
	
	void Animal::ComputeKernel() {
		kernel = std::make_shared<f32[]>(r * r);
		f32 normalization_factor = Normalization();
		for (size_t i = 0; i < r; i++)
		for (size_t j = 0; j < r; j++)
			kernel[i * r + j] = ApplyKernelShell((f32)sqrt(i * i + j * j)) / normalization_factor;
	}

	std::string Animal::ToString() {
		std::unique_ptr<f32[]> cells = GetCells();
		std::string str = std::format("{}\n{}, {}\n", taxonomy.species, w, h);
		for (size_t i = 0; i < h; i++) {
			for (size_t j = 0; j < w; j++)
				str += std::format("{:.3f} ", cells[i * w + j]);
			str += "\n";
		}
		return str;
	}
}