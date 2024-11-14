#pragma once
#include "colors.hpp"
#include "buffer.hpp"
#include "vec.hpp"
#include <chrono>

namespace Lenia {

	class Simulation {
	public:
		size_t m_w;
		size_t m_h;
		size_t m_scale;
		size_t m_size;
		f64 m_mass;
		f64 m_massDelta;
		Core::Vec2<u32> m_centerOfMass;

		std::chrono::microseconds m_updateTimeBoxes;
		std::chrono::microseconds m_updateTimeTotal;
		
		Simulation() = delete;
		Simulation(const size_t W, const size_t H, const size_t scale = 1, const Core::ColorPalette& colorPalette = Core::Magma);
		~Simulation();
		void placeCells(const std::vector<f32>& cells, const size_t c_w, const size_t c_h, const u32 x, const u32 y) noexcept;
		void update() noexcept;
		void updateTimed() noexcept;
		void applyColorPalette(const Core::ColorPalette& colorMap) noexcept;
		size_t getNBoundingBoxes() const noexcept;
		f32 calcAreaComputed() const noexcept;

	private:
		Core::Buffer<f32> m_readBuffer;
		Core::Buffer<f32> m_writeBuffer;
		Core::Buffer<Core::ShaderData> m_dataBuffer;
		Core::Buffer<Core::ColorPalette> m_colorBuffer;
		Core::Buffer<Core::BoundingBox> m_boundingBoxBuffer;

		void swapBuffers() noexcept;
		void readShaderDataBuffer() noexcept;
		void calculateBoundingBoxes() noexcept;
	};
}
