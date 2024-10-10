#pragma once
#include "Animal.h"
#include "Colors.h"
namespace Lenia {

	class Field {
	public:

		size_t W;
		size_t H;
		size_t Scale;
		size_t Size;

		f64 Mass;
		std::pair<u32, u32> CenterOfMass;
		
		/// <summary>
		/// A struct that matches the data buffer in the compute shader one-to-one, to make reading and writing easier.
		/// </summary>
		struct ShaderData {
			u32 Sum;
			u32 CenterOfMassX;
			u32 CenterOfMassY;
		};
		
		constexpr static const ShaderData EmptyShaderData = { 0, 0, 0 };

		ShaderData ShaderData;
	
		Field(const size_t W, const size_t H, const size_t scale = 1, const std::string& colorMapName = "Magma");

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
		/// Updates the field and reads the data buffer from the GPU.
		/// </summary>
		void Update() noexcept;

		/// <summary>
		/// Set the color map of the field and upload it to the GPU.
		/// </summary>
		/// <param name="colorMapName"></param>
		void SetColorMap(const std::string& colorMapName) noexcept;

	private:
		i8 BufferBinding;
		std::unique_ptr<f32[]> Cells;

		GLuint ReadBufferID;
		GLuint WriteBufferID;
		GLuint DataBufferID;
		GLuint ColorBufferID;

		ColorMap ColorMap;

		/// <summary>
		/// Swaps the read and write buffer binding.
		/// </summary>
		void SwapBuffers() noexcept;

		/// <summary>
		/// Read the data buffer from the GPU.
		/// </summary>
		void ReadShaderDataBuffer() noexcept;
	};
}
