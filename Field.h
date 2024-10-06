#pragma once
#include "Animal.h"
namespace Lenia {
	class Field {
	public:
		size_t W;
		size_t H;
		size_t Scale;
		size_t Size;
		std::unique_ptr<f32[]> Cells;

		Field(const size_t W, const size_t H, const size_t scale = 1);

		std::unique_ptr<f32[]> SetupCells() const noexcept;

		void PlaceAnimal(Animal& animal, const u32 x, const u32 y) const noexcept;
	};
}
