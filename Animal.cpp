#include <string>
#include "Animal.h"
#include <cassert>

namespace Lenia {
	Animal::Animal() : name(""), _class(""), order(""), family(""), subfamily(""),R(0), dt(0), beta(nullptr), B(0.f), mu(0), sigma(0), kn(0), gn(0), W(0), H(0), RLE("") {}

	Animal::Animal (const std::string name, const std::string _class, const std::string order, const std::string family, const std::string subfamily,
		const f32 R, const f32 dt, f32* beta, const u8 B, const f32 mu, const f32 sigma, const f32 kn, const f32 gn, std::string RLE) :
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
}