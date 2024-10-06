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

		/*const GLuint readBuffer;
		const GLuint writeBuffer;*/

		Field(const size_t W, const size_t H, const size_t scale = 1);

		/// <summary>
		/// Initializes the cells of the field.
		/// </summary>
		/// <returns>A unique pointer to the array of the cells.</returns>
		std::unique_ptr<f32[]> SetupCells() const noexcept;

		/// <summary>
		/// Places an animal in the field with proper scaling.
		/// </summary>
		/// <param name="animal">The animal to place.</param>
		/// <param name="x">The x coordinate.</param>
		/// <param name="y">The y coordinate.</param>
		void PlaceAnimal(Animal& animal, const u32 x, const u32 y) const noexcept;

		/// <summary>
		/// Sums all the values in the field.
		/// </summary>
		/// <returns>The sum.</returns>
		//f64 Sum() const noexcept;
	};
}
