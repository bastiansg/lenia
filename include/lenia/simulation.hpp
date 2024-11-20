#pragma once
#include "core.hpp"
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
		f64 m_mass = 0;
		f64 m_massDelta = 0;
		Core::Vec2<u32> m_centerOfMass = {0, 0};

		std::chrono::microseconds m_updateTimeBoxes;
		std::chrono::microseconds m_updateTimeTotal;
		
		Simulation();
		Simulation(const size_t W, const size_t H, const size_t scale = 1);
		~Simulation();
		void clearCells() noexcept;
		void placeCells(const std::vector<f32>& cells, const size_t c_w, const size_t c_h, const u32 x, const u32 y) noexcept;
		void placeCellsCircle(const u16 x, const u16 y, const u16 diameter) noexcept;
		void update() noexcept;
		void updateTimed() noexcept;
		size_t getNBoundingBoxes() const noexcept;
		f32 calcAreaComputed() const noexcept;

		static constexpr u8 getNChunks() {
			return c_threadSplits * c_threadSplits;
		}

	private:
		Core::Buffer<f32> m_readBuffer;
		Core::Buffer<f32> m_writeBuffer;
		Core::Buffer<Core::ShaderData> m_dataBuffer;
		Core::Buffer<Core::BoundingBox> m_boundingBoxBuffer;

		static constexpr u8 c_threadSplits = 8;
		static constexpr u8 c_padding = 80;
		static constexpr u8 c_resizeFactor = 40; 

		void swapBuffers() noexcept;
		void readShaderDataBuffer() noexcept;
		void calculateBoundingBoxes() noexcept;
		void processBoundingBoxesChunk(const std::vector<f32>* sourceBuffer, std::vector<Core::BoundingBox>& out, const u32 chunk_size_h, const u32 chunk_size_v, const u32 x, const u32 y);
	};
}
