#pragma once
#include "Animal.hpp"
#include "Colors.hpp"
namespace Lenia {

	class Simulation {
	public:

		size_t w;
		size_t h;
		size_t scale;
		size_t size;

		f64 mass;
		std::pair<u32, u32> centerOfMass;
		
		struct BoundingBox {
			u16 padding;
			std::pair<u32, u32> topLeft;
			std::pair<u32, u32> bottomRight;
		};

		BoundingBox boundingBox;
		
		/// <summary>
		/// A struct that matches the data buffer in the compute shader one-to-one, to make reading and writing easier.
		/// </summary>
		struct ShaderData {
			u32 sum;
			u32 centerOfMassX;
			u32 centerOfMassY;
			u32 minLeft;
			u32 maxRight;
			u32 minTop;
			u32 maxBottom;
		};

		ShaderData defaultShaderData;

		ShaderData shaderData;
	
		Simulation(const size_t W, const size_t H, const size_t scale = 1, const ColorPalette& colorPalette = Magma) noexcept;

		~Simulation();

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
		void ApplyColorPalette(const ColorPalette& colorMap) noexcept;

	private:
		i8 bufferBinding;
		std::unique_ptr<f32[]> cells;

		GLuint readBufferID;
		GLuint writeBufferID;
		GLuint dataBufferID;
		GLuint colorBufferID;

		ColorPalette colorPalette;

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
