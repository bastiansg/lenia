#pragma once
#include "core.hpp"
#include "boundingbox.hpp"
#include "buffer.hpp"
#include "animal.hpp"
#include <thrust/device_vector.h>
#include <cuda_gl_interop.h>

#include <chrono>
#include <thread>

namespace Lenia {

	class Simulation {
	public:
		std::size_t m_w;
		std::size_t m_h;
		std::size_t m_size;
		std::size_t m_scale = 1;
		f32 m_norm;
		f64 m_mass = 0;
		f64 m_massDelta = 0;
		glm::vec2 m_centerOfMass = {0, 0};
		glm::vec2 m_direction = {0, 0};

		std::chrono::microseconds m_updateTimeBoxes{};
		std::chrono::microseconds m_updateTimeTotal{};
		
		explicit Simulation(const size_t W, const size_t H, const size_t scale);
		explicit Simulation(const size_t W, const size_t H, const size_t scale, const size_t maxCenterOfMassCalculations);
		~Simulation() noexcept;
		void clearCells() noexcept;
		void placeCells(const std::vector<f32> &cells, const size_t c_w, const size_t c_h, const u32 x, const u32 y) noexcept;
		void placeCellsCircle(const u16 x, const u16 y, const u16 radius, const f32 value) noexcept;
		void update() noexcept;
		void updateTimed() noexcept;
		void loadFFT() noexcept;
        void updateFFT(const Lenia::Animal &animal) noexcept;
        void updateFFTFast(Lenia::Animal &animal) noexcept;
		size_t getNBoundingBoxes() const noexcept;
		f32 calcAreaComputed() const noexcept;

		static constexpr u8 getNChunks() {
			return c_threadSplits * c_threadSplits;
		}

	private:
		Buffer<f32> m_readBuffer;
		Buffer<f32> m_writeBuffer;
		Buffer<ShaderData> m_dataBuffer;
		Buffer<BoundingBox> m_boundingBoxBuffer;

		thrust::device_vector<c64> m_fftField;
		thrust::device_vector<c64> m_mulfftField;
		thrust::device_vector<c64> m_shiftedfftField;
		thrust::device_vector<c64> m_invfftField;
		thrust::device_vector<c64> m_normfftField;
		thrust::device_vector<c64> m_resultfftField;

		cufftHandle m_plan;

		cudaGraphicsResource *m_cudaGraphicsResource = nullptr;
		c64* m_fragBuffer = nullptr;
		std::size_t m_numBytes;

		u32 m_layerCount;

		dim3 m_threadsPerBlock;
		dim3 m_blocksInGrid;

		const u32 m_maxTimesCenterOfMassCalculate = 30;
		u32 m_timesCenterOfMassCalculated = 0;
		f32 m_averageCenterOfMassChange = 0;

		i32 *m_cudaBoundingBox;

		static constexpr u8 c_threadSplits = 6;
		static constexpr u8 c_padding = 80;
		static constexpr u8 c_resizeFactor = 40; 

		void swapBuffers() noexcept;
		void readShaderDataBuffer() noexcept;
		void calculateBoundingBoxes() noexcept;
		void processBoundingBoxesChunk(const std::vector<f32> &sourceBuffer, std::vector<BoundingBox> &out, const u32 chunk_size_h, const u32 chunk_size_v, const u32 x, const u32 y) const;
	};
}
