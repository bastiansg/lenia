#pragma once
#include "Field.h"
namespace Lenia {
	Field::Field(const u32 W, const u32 H, const u32 resolution) {
		this->W = W;
		this->H = H;
		this->Resolution = resolution;
		this->Size = static_cast<size_t>(W) * H * resolution * resolution;
		Cells = SetupCells();
	}

	void Field::PlaceAnimal(Animal& animal, const u32 x, const u32 y) const noexcept {
		const std::unique_ptr<f32[]> animal_cells = animal.GetCells();
		animal.R *= Resolution;
		for (u32 i = 0; i < animal.W; i++) 
		for (u32 j = 0; j < animal.H; j++) 
		for (u32 k = 0; k < Resolution; k++)
		for (u32 l = 0; l < Resolution; l++)
			Cells[(x + i * Resolution + k) + (y + j * Resolution + l) * W] = animal_cells[i + j * animal.W];
	}

	std::unique_ptr<f32[]> Field::SetupCells() const noexcept {
		std::unique_ptr<f32[]> field = std::make_unique<f32[]>(Size);
		std::fill(field.get(), field.get() + Size, 0.0f);
		return field;
	}
}