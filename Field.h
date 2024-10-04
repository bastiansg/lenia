#pragma once
#include "Animal.h"
namespace Lenia {
	class Field {
	public:
		u32 W;
		u32 H;
		u32 Resolution;
		size_t Size;
		std::unique_ptr<f32[]> Cells;

		Field(const u32 W, const u32 H, const u32 resolution = 1);

		std::unique_ptr<f32[]> SetupCells() const noexcept;

		void PlaceAnimal(Animal& animal, const u32 x, const u32 y) const noexcept;
	};
}
