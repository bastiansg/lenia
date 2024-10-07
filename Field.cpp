#pragma once
#include "Field.h"
#include <immintrin.h>
#include <chrono>

namespace Lenia {
	Field::Field(const size_t W, const size_t H, const size_t scale) {
		this->W = W;
		this->H = H;
		this->Scale = scale;
		this->Size = W * H;
		this->BufferBinding = 0;
		SetupCells();
	}

	Field::~Field() {
		glDeleteBuffers(1, &ReadBuffer);
		glDeleteBuffers(1, &WriteBuffer);
	}

	void Field::PlaceAnimal(Animal& animal, const u32 x, const u32 y) noexcept {
		const std::unique_ptr<f32[]> animal_cells = animal.GetCells();
		for (size_t i = 0; i < animal.H; i++)
		for (size_t j = 0; j < animal.W; j++)
		for (size_t k = 0; k < Scale; k++)
		for (size_t l = 0; l < Scale; l++)
			Cells[(x + i * Scale + k) * W + (y + j * Scale + l)] = animal_cells[i * animal.W + j];
		Lenia::InitBuffer<f32>(&ReadBuffer, Cells.get(), Size, 1);
	}

	void Field::SetupCells() noexcept {
		Cells = std::make_unique<f32[]>(Size);
		std::fill(Cells.get(), Cells.get() + Size, 0.f);
		Lenia::InitBuffer<f32>(&ReadBuffer, Cells.get(), Size, 1);
		Lenia::InitBuffer<f32>(&WriteBuffer, nullptr, Size, 0);
	}

	void Field::SwapBuffers() noexcept {
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - BufferBinding, WriteBuffer);
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, BufferBinding, ReadBuffer);
		BufferBinding = 1 - BufferBinding;
	}
	
	_NODISCARD f64 Field::Sum() const noexcept {
		static alignas(64) f32* buffer = new f32[Size];
		glGetNamedBufferSubData(ReadBuffer, 0, Size * sizeof(f32), buffer);

		__m512 _sum_vec = _mm512_setzero_ps();
		size_t i = 0;
		static size_t simdSize = Size - (Size % 16);
		for (; i < simdSize; i += 16) {
			__m512 _batch = _mm512_load_ps(&buffer[i]);
			_sum_vec = _mm512_add_ps(_sum_vec, _batch);
		}
		static f32 temp[16];
		_mm512_store_ps(temp, _sum_vec);
		f64 sum = 0;
		for (size_t ti = 0; ti < 16; ti++)
			sum += temp[ti];
		for (; i < Size; i++)
			sum += buffer[i];

		return sum;
	}
}