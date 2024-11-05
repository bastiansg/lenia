#pragma once
#include "animal.hpp"
#include "colors.hpp"
#include <vector>

namespace Lenia {

	class Simulation {
	public:

		size_t m_w;
		size_t m_h;
		size_t m_scale;
		size_t m_size;

		f64 m_mass;
		Vec2<u32> m_centerOfMass;

		Buffer<f32> m_readBuffer;
		Buffer<f32> m_writeBuffer;
		Buffer<ShaderData> m_dataBuffer;
		Buffer<ColorPalette> m_colorBuffer;
		Buffer<BoundingBox> m_boundingBoxBuffer;

		ShaderData defaultShaderData;

		ShaderData m_shaderData;
	
		Simulation(const size_t W, const size_t H, const size_t scale = 1, const ColorPalette& colorPalette = Magma);

		~Simulation();

		/// <summary>
		/// Places an animal in the field with proper scaling.
		/// </summary>
		/// <param name="animal">The animal to place.</param>
		/// <param name="x">The x coordinate.</param>
		/// <param name="y">The y coordinate.</param>
		void PlaceAnimal(Animal *animal, const u32 x, const u32 y) noexcept;

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
		i8 m_readWriteBinding = (i8)BufferBinding::READ;

		/// <summary>
		/// Swaps the read and write buffer binding.
		/// </summary>
		void SwapBuffers() noexcept;

		/// <summary>
		/// Read the data buffer from the GPU.
		/// </summary>
		void ReadShaderDataBuffer() noexcept;

		/// <summary>
		/// Calculate the bounding boxes of the field.
		/// </summary>
		void CalculateBoundingBoxes() noexcept;


		/// <summary>
		/// Fills the current bounding box.
		/// </summary>
		BoundingBox FillBoundingBox(const u32 x, const u32 y, const u16 padding) const noexcept;
	};
}
