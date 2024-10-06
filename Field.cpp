#pragma once
#include "Field.h"
namespace Lenia {
	Field::Field(const size_t W, const size_t H, const size_t scale) {
		this->W = W;
		this->H = H;
		this->Scale = scale;
		this->Size = W * H * scale * scale;
		this->BufferBinding = 1;
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
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, BufferBinding = 1 - BufferBinding, WriteBuffer);
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, BufferBinding, ReadBuffer);
	}

	/*f64 Field::Sum() const noexcept {
		f64 sum = 0.0;
		for (size_t i = 0; i < Size; i++)
			sum += readBuffer[i];
		return sum;
	}*/
}