#pragma once
#include "Field.h"
namespace Lenia {
	Field::Field(const size_t W, const size_t H, const size_t scale) {
		this->W = W;
		this->H = H;
		this->Scale = scale;
		this->Size = W * H * scale * scale;
		Cells = SetupCells();
	}

	void Field::PlaceAnimal(Animal& animal, const u32 x, const u32 y) const noexcept {
		const std::unique_ptr<f32[]> animal_cells = animal.GetCells();
		animal.R *= (u32)Scale;
		for (size_t i = 0; i < animal.H; i++)
		for (size_t j = 0; j < animal.W; j++)
		for (size_t k = 0; k < Scale; k++)
		for (size_t l = 0; l < Scale; l++)
			Cells[(x + i * Scale + k) * W + (y + j * Scale + l)] = animal_cells[i * animal.W + j];
	}

	std::unique_ptr<f32[]> Field::SetupCells() const noexcept {
		std::unique_ptr<f32[]> field = std::make_unique<f32[]>(Size);
		std::fill(field.get(), field.get() + Size, 0.0f);
		return field;
	}

	/*f64 Field::Sum() const noexcept {
		f64 sum = 0.0;
		for (size_t i = 0; i < Size; i++)
			sum += readBuffer[i];
		return sum;
	}*/
}