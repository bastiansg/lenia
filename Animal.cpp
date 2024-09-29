#include <string>
#include "Animal.h"
#include <cassert>

namespace Lenia {
	Animal::Animal() : name(""), _class(""), order(""), family(""), subfamily(""), W(0), H(0) {}
	Animal::Animal(const std::string& name, const std::string& _class, const std::string& order, const std::string& family, const std::string& subfamily):
	name(name), _class(_class), order(order), family(family), subfamily(subfamily), W(0), H(0) {}

	Animal::Animal(const std::string& name, const std::string& _class, const std::string& order, const std::string& family, const std::string& subfamily, const std::string& RLE):
	name(name), _class(_class), order(order), family(family), subfamily(subfamily), W(0), H(0) {
		SetCellsFromRLE(RLE);
	}


	void Animal::SetCellsFromRLE(const std::string& zipped) noexcept {
		char* str = (char*)zipped.c_str();
		int count = 0, num = 0, array_len = 0;
		f32* buffer = new f32[50000];
		std::fill(buffer, buffer + 50000, 0);
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
		f32* new_buffer = new f32[num_rows * (row_size)];
		std::fill(new_buffer, new_buffer + (num_rows * (row_size)), 0);
		for (u32 i = 0, j = 0, count = 0; j < num_rows * (row_size); i++, j++) {
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
		this->cells = std::unique_ptr<const f32[]>(new_buffer);
	}
}