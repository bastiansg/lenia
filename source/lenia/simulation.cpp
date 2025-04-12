#include "simulation.hpp"
#include "glm/glm.hpp"
#include "glm/vec2.hpp"
#include <functional>
#include <execution>
#include <iostream>
#include <cmath>


Lenia::Simulation::Simulation(const size_t w, const size_t h, const size_t scale):
	m_w(w),
	m_h(h),
	m_size(w * h),
	m_scale(scale),
	m_norm(1.f / (f32)m_size),
	m_layerCount(2),
	m_threadsPerBlock(32, 32),
	m_blocksInGrid((m_w + m_threadsPerBlock.x - 1) / m_threadsPerBlock.x, (m_h + m_threadsPerBlock.y - 1) / m_threadsPerBlock.y),
	m_readBuffer(Buffer<f32>(BufferBinding::READ, w * h * 2)),
	m_writeBuffer(Buffer<f32>(BufferBinding::WRITE, w * h * 2)),
	m_dataBuffer(Buffer<ShaderData>(BufferBinding::DATA, {{0, 0, 0}})),
	m_boundingBoxBuffer(Buffer<BoundingBox>(BufferBinding::BOUNDING_BOXES)) {
	cudaGraphicsGLRegisterBuffer(&m_cudaGraphicsResource, m_readBuffer.m_ID, cudaGraphicsMapFlagsNone);
	cudaGraphicsMapResources(1, &m_cudaGraphicsResource, 0);
	cudaGraphicsResourceGetMappedPointer((void**)&m_fragBuffer, &m_numBytes, m_cudaGraphicsResource);
    cufftPlan2d(&m_plan, m_w, m_h, CUFFT_C2C);
}

Lenia::Simulation::Simulation(const size_t w, const size_t h, const size_t scale, const size_t maxNumberCenterOfMassCalculations): 
	m_w(w),
	m_h(h),
	m_size(w * h),
	m_scale(scale),
	m_norm(1.f / (f32)m_size),
	m_layerCount(2),
	m_threadsPerBlock(32, 32),
	m_blocksInGrid(m_w + m_threadsPerBlock.x - 1 / m_threadsPerBlock.x, m_h + m_threadsPerBlock.y - 1 / m_threadsPerBlock.y),
	m_readBuffer(Buffer<f32>(BufferBinding::READ, w * h)),
	m_writeBuffer(Buffer<f32>(BufferBinding::WRITE, w * h)),
	m_dataBuffer(Buffer<ShaderData>(BufferBinding::DATA, {{0, 0, 0}})),
	m_boundingBoxBuffer(Buffer<BoundingBox>(BufferBinding::BOUNDING_BOXES)),
	m_maxTimesCenterOfMassCalculate(maxNumberCenterOfMassCalculations) {
	cudaGraphicsGLRegisterBuffer(&m_cudaGraphicsResource, m_readBuffer.m_ID, cudaGraphicsMapFlagsNone);
	cudaGraphicsMapResources(1, &m_cudaGraphicsResource, 0);
	cudaGraphicsResourceGetMappedPointer((void**)&m_fragBuffer, &m_numBytes, m_cudaGraphicsResource);
    cufftPlan2d(&m_plan, m_w, m_h, CUFFT_C2C);
}

Lenia::Simulation::~Simulation() noexcept {
	cudaGraphicsUnmapResources(1, &m_cudaGraphicsResource);
	cufftDestroy(m_plan);
}


void Lenia::Simulation::placeCells(const std::vector<f32> &cells, const size_t c_w, const size_t c_h, const u32 x, const u32 y) noexcept {
	for (size_t i = 0; i < c_h; i++)
	for (size_t j = 0; j < c_w; j++)
	for (size_t k = 0; k < m_scale; k++)
	for (size_t l = 0; l < m_scale; l++) {
		m_readBuffer[(y + i * m_scale + k) % m_h * m_w + (x + j * m_scale + l) % m_w] = cells[i * c_w + j];
		m_writeBuffer[(y + i * m_scale + k) % m_h * m_w + (x + j * m_scale + l) % m_w] = cells[i * c_w + j];
	}
	m_readBuffer.storeDataInShader();
	m_writeBuffer.storeDataInShader();
}

void Lenia::Simulation::placeCellsCircle(const u16 x, const u16 y, const u16 radius, const f32 value) noexcept {
	Buffer<f32>* buffer = m_readBuffer.m_binding == BufferBinding::WRITE ? &m_readBuffer : &m_writeBuffer;
	for (i16 i = -radius; i < radius; ++i)
	for (i16 j = -radius; j < radius; ++j) {
		if ((i * i + j * j) < radius * radius) {
			(*buffer)[((i + y) * m_w + j + x) % m_size] = value * (1 - sqrt(i * i + j * j) / radius);
		}
	}
	buffer->storeDataInShader();
}

void Lenia::Simulation::clearCells() noexcept {
	std::fill(m_readBuffer.m_data.begin(), m_readBuffer.m_data.end(), 0.f); 
	std::fill(m_writeBuffer.m_data.begin(), m_writeBuffer.m_data.end(), 0.f); 
	m_readBuffer.storeDataInShader();
	m_writeBuffer.storeDataInShader();
}

void Lenia::Simulation::readShaderDataBuffer() noexcept {
	m_dataBuffer.loadDataFromShader();
	ShaderData shaderData = m_dataBuffer.m_data[0];
	if (shaderData.empty())
		return;
	const f64 mass_temp = m_mass;
	m_mass = (f64)shaderData.sum / 10000.f;
	m_massDelta = m_mass - mass_temp;
	glm::vec2 prev_pos = m_centerOfMass;
	f32 y = shaderData.centerOfMassY / f32(100.0 * m_mass);
	f32 x = shaderData.centerOfMassX / f32(100.0 * m_mass);
	if (m_timesCenterOfMassCalculated < m_maxTimesCenterOfMassCalculate) {
		m_centerOfMass = {x, y};
		m_direction = glm::vec2{x, y} - prev_pos;
		if (m_timesCenterOfMassCalculated > 5) {
			m_averageCenterOfMassChange = (m_averageCenterOfMassChange + (glm::length(m_direction) - m_averageCenterOfMassChange)) / (m_timesCenterOfMassCalculated + 1);
		}
	} else {
		//std::cout << abs(glm::length(m_direction) - m_averageCenterOfMassChange) << "\n";
		if (abs(glm::length(m_direction) - m_averageCenterOfMassChange) < 5.f) {
			//std::cout << "recalculating" << "\n";
			m_centerOfMass = {x, y};
			m_direction = glm::vec2{x, y} - prev_pos;
			//std::cout << m_direction.x << "" << m_direction.y << "\n";
		} else {
			//std::cout << "using vector" << "\n";
			m_centerOfMass += m_direction;
			m_centerOfMass = glm::vec2{fmodf(m_centerOfMass.x, (f32)m_w), fmodf(m_centerOfMass.y, m_h)};
		}
	}
	m_timesCenterOfMassCalculated++;
}

void Lenia::Simulation::update() noexcept {
	swapBuffers();
	readShaderDataBuffer();
	calculateBoundingBoxes();
	m_dataBuffer.m_data[0] = { 0, 0, 0 };
	m_dataBuffer.storeDataInShader();
	m_boundingBoxBuffer.storeDataInShader();
}

void Lenia::Simulation::updateTimed() noexcept {
	swapBuffers();
	readShaderDataBuffer();
	calculateBoundingBoxes();
	m_dataBuffer.m_data[0] = { 0, 0, 0 };
	m_dataBuffer.storeDataInShader();
	m_boundingBoxBuffer.storeDataInShader();
}


void Lenia::Simulation::swapBuffers() noexcept {
	m_readBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
	m_writeBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_writeBuffer.m_binding));
	glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_readBuffer.m_binding), m_writeBuffer.m_ID);
	glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_writeBuffer.m_binding), m_readBuffer.m_ID);
}


size_t Lenia::Simulation::getNBoundingBoxes() const noexcept {
	return m_boundingBoxBuffer.m_data.size(); 
}

f32 Lenia::Simulation::calcAreaComputed() const noexcept {
	// f32 areaBB;
	// return f32(m_w * m_h) / areaBB;
	return 0;
}


void Lenia::Simulation::processBoundingBoxesChunk(const std::vector<f32> &sourceBuffer, std::vector<BoundingBox> &out, const u32 chunk_size_h, const u32 chunk_size_v, const u32 x, const u32 y) const {
	for (u32 i = y; i < y + chunk_size_h; ++i) 
	for (u32 j = x; j < x + chunk_size_v; ++j) {
		b8 new_point = true;
		for (const auto& box : out) {
			if (box.contains(j, i, m_w, m_h)) {
				new_point = false;
				break;
			}
		}
		if (new_point && sourceBuffer[i * m_w + j]) {
			out.emplace_back(j - c_padding / 2, i - c_padding / 2, j + c_padding, i + c_padding);
		}
	}
	for (auto& box : out) {
		box.resize(c_resizeFactor);
	}
}


void Lenia::Simulation::calculateBoundingBoxes() noexcept {
	auto start = std::chrono::high_resolution_clock::now();

	m_boundingBoxBuffer.m_data.clear();
	const u16 chunk_size_h = m_w / c_threadSplits;
	const u16 chunk_size_v = m_h / c_threadSplits;

	Buffer<f32>* const current_buffer = (m_readBuffer.m_binding == BufferBinding::WRITE) 
                           ? &m_readBuffer 
                           : &m_writeBuffer;
	current_buffer->loadDataFromShader();

	std::vector<BoundingBox> in_box_vectors[getNChunks()];
	auto tasks = std::vector<std::function<void()>>();

	for (i32 row = 0; row < c_threadSplits; ++row)
	for (i32 col = 0; col < c_threadSplits; ++col) {
		tasks.push_back([&, row, col]() {
			std::vector<BoundingBox>& boundingBoxes = in_box_vectors[row * c_threadSplits + col];
			processBoundingBoxesChunk(current_buffer->m_data, boundingBoxes, chunk_size_h, chunk_size_v, row * chunk_size_h, col * chunk_size_v);
		});
	}

	std::for_each(std::execution::par_unseq, tasks.begin(), tasks.end(), [](std::function<void()>& task) { task(); });
	size_t totalSize = 0;
    for (const auto &vec : in_box_vectors) {
        totalSize += vec.size();
    }
	m_boundingBoxBuffer.m_data.reserve(totalSize);
	for (const auto &vec : in_box_vectors) {
        m_boundingBoxBuffer.m_data.insert(m_boundingBoxBuffer.m_data.end(), vec.begin(), vec.end());
    }
	m_updateTimeBoxes = std::chrono::duration_cast<std::chrono::microseconds>(std::chrono::high_resolution_clock::now() - start);
	// for (size_t i = 0; i < m_boundingBoxBuffer.m_data.size() - 1; ++i) {
	// 	if (m_boundingBoxBuffer[i].overlap(m_boundingBoxBuffer[i + 1]) > 0.9f) {
			
	// 	}
	// }
}
