#pragma once
#include "Animal.h"
namespace Lenia {
	class Field {
	public:
		size_t W;
		size_t H;
		size_t Scale;
		size_t Size;
		i8 BufferBinding;
		std::unique_ptr<f32[]> Cells;

		GLuint ReadBuffer;
		GLuint WriteBuffer;

		Field(const size_t W, const size_t H, const size_t scale = 1);

		~Field();


		/// <summary>
		/// Initializes the cells of the field.
		/// </summary>
		void SetupCells() noexcept;

		/// <summary>
		/// Places an animal in the field with proper scaling.
		/// </summary>
		/// <param name="animal">The animal to place.</param>
		/// <param name="x">The x coordinate.</param>
		/// <param name="y">The y coordinate.</param>
		void PlaceAnimal(Animal& animal, const u32 x, const u32 y) noexcept;

		/// <summary>
		/// Sums all the values in the field.
		/// </summary>
		/// <returns>The sum.</returns>
		//f64 Sum() const noexcept;

		/// <summary>
		/// Swaps the read and write buffer binding.
		/// </summary>
		void SwapBuffers() noexcept;
	};
}
