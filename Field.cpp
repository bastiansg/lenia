#pragma once
#include "Field.h"
namespace Lenia {
	Field::Field(const u32 W, const u32 H) {
		this->W = W;
		this->H = H;
		Cells = SetupCells();
	}

	void Field::PlaceAnimal(Animal& animal, const u32 x, const u32 y) const noexcept {
		const std::unique_ptr<f32[]> animal_cells = animal.GetCells();
		for (u32 i = 0; i < animal.W; i++) 
		for (u32 j = 0; j < animal.H; j++) 
			if (x + i < W && y + j < H) 
				Cells[(static_cast<size_t>(y) + j) * W + x + i] = animal_cells[static_cast<size_t>(j) * animal.W + i];
	}

	std::unique_ptr<f32[]> Field::SetupCells() const noexcept {
		std::unique_ptr<f32[]> field = std::make_unique<f32[]>(static_cast<size_t>(W) * H);
		std::fill(field.get(), field.get() + (static_cast<size_t>(W) * H), 0.0f);
		return field;
	}
}