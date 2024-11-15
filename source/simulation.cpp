#include "lenia/simulation.hpp"
#include <functional>
#include <execution>

Lenia::Simulation::Simulation(const size_t w, const size_t h, const size_t scale, const Core::ColorPalette& colorPalette) {
	m_w = w;
	m_h = h;
	m_scale = scale;
	m_size = w * h;
	m_mass = 0.f;
	m_massDelta = 0.f;
	m_centerOfMass = { 0, 0 };
	m_updateTimeBoxes = {};
	m_updateTimeTotal = {};
	m_readBuffer = Core::Buffer<f32>(Core::BufferBinding::READ, m_size);
	m_writeBuffer = Core::Buffer<f32>(Core::BufferBinding::WRITE, m_size);
	m_dataBuffer = Core::Buffer<Core::ShaderData>(Core::BufferBinding::DATA, {{0,0,0}});
	m_colorBuffer = Core::Buffer<Core::ColorPalette>(Core::BufferBinding::COLOR, {colorPalette});
	m_boundingBoxBuffer = Core::Buffer<Core::BoundingBox>(Core::BufferBinding::BOUNDING_BOXES);
	applyColorPalette(colorPalette);
}

Lenia::Simulation::~Simulation() {
	glDeleteBuffers(1, &m_readBuffer.m_ID);
	glDeleteBuffers(1, &m_writeBuffer.m_ID);
}

void Lenia::Simulation::placeCells(const std::vector<f32>& cells, const size_t c_w, const size_t c_h, const u32 x, const u32 y) noexcept {
	for (size_t i = 0; i < c_h; i++)
	for (size_t j = 0; j < c_w; j++)
	for (size_t k = 0; k < m_scale; k++)
	for (size_t l = 0; l < m_scale; l++) {
		m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = cells[i * c_w + j];
		m_writeBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = cells[i * c_w + j];
	}
	m_readBuffer.storeDataInShader();
	m_writeBuffer.storeDataInShader();
}

void Lenia::Simulation::clearCells() noexcept {
	std::fill(m_readBuffer.m_data.begin(), m_readBuffer.m_data.end(), 0); 
	std::fill(m_writeBuffer.m_data.begin(), m_writeBuffer.m_data.end(), 0); 
	m_readBuffer.storeDataInShader();
	m_writeBuffer.storeDataInShader();
}

void Lenia::Simulation::readShaderDataBuffer() noexcept {
	m_dataBuffer.loadDataFromShader();
	Core::ShaderData shaderData = m_dataBuffer.m_data[0];
	const f64 mass_temp = m_mass;
	m_mass = (f64)shaderData.sum / 10000.f;
	m_massDelta = m_mass - mass_temp;
	f32 y = shaderData.centerOfMassY / f32(100.0 * m_mass);
	f32 x = shaderData.centerOfMassX / f32(100.0 * m_mass);
	m_centerOfMass = { u32(x), u32(y) };
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
	auto start = std::chrono::high_resolution_clock::now();
	calculateBoundingBoxes();
	m_updateTimeBoxes = std::chrono::duration_cast<std::chrono::microseconds>(std::chrono::high_resolution_clock::now() - start);
	m_dataBuffer.m_data[0] = { 0, 0, 0 };
	m_dataBuffer.storeDataInShader();
	m_boundingBoxBuffer.storeDataInShader();
	m_updateTimeTotal = std::chrono::duration_cast<std::chrono::microseconds>(std::chrono::high_resolution_clock::now() - start);
}


void Lenia::Simulation::swapBuffers() noexcept {
	m_readBuffer.m_binding = static_cast<Core::BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
	m_writeBuffer.m_binding = static_cast<Core::BufferBinding>(1 - static_cast<i8>(m_writeBuffer.m_binding));
	glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_readBuffer.m_binding), m_writeBuffer.m_ID);
	glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_writeBuffer.m_binding), m_readBuffer.m_ID);
}

void Lenia::Simulation::applyColorPalette(const Core::ColorPalette& colorPalette) noexcept {
	m_colorBuffer.m_data[0] = colorPalette;
	m_colorBuffer.storeDataInShader();
}

size_t Lenia::Simulation::getNBoundingBoxes() const noexcept {
	return m_boundingBoxBuffer.m_data.size(); 
}

f32 Lenia::Simulation::calcAreaComputed() const noexcept {
	// f32 areaBB;
	// return f32(m_w * m_h) / areaBB;
	return 0;
}


void Lenia::Simulation::processBoundingBoxesChunk(const std::vector<f32>* sourceBuffer, std::vector<Lenia::Core::BoundingBox>& out, const u32 chunk_size, const u32 x, const u32 y) {
	for (u32 i = y; i < y + chunk_size; ++i) 
	for (u32 j = x; j < x + chunk_size; ++j) {
		b8 new_point = true;
		for (const auto& box : out) {
			if (box(j, i, m_w, m_h)) {
				new_point = false;
				break;
			}
		}
		if (new_point && (*sourceBuffer)[i * m_w + j]) {
			out.emplace_back(j - c_padding / 2, i - c_padding / 2, j + c_padding, i + c_padding);
		}
	}
	for (auto& box : out) {
		box.resize(c_resizeFactor);
	}
}

void Lenia::Simulation::calculateBoundingBoxes() noexcept {
	const u16 chunk_size = m_w / c_threadSplits;

	std::vector<f32> const *buffer;
	if (m_readBuffer.m_binding == Core::BufferBinding::WRITE) {
		m_readBuffer.loadDataFromShader();
		buffer = &m_readBuffer.m_data;
	}
	else {
		m_writeBuffer.loadDataFromShader();
		buffer = &m_writeBuffer.m_data;
	}

	auto boxes = std::vector<Core::BoundingBox>();
	auto in_box_vectors = std::vector<std::vector<Core::BoundingBox>>(c_threadSplits * c_threadSplits);
	auto tasks = std::vector<std::function<void()>>();

	for (i32 row = 0; row < c_threadSplits; ++row)
	for (i32 col = 0; col < c_threadSplits; ++col) {
		tasks.push_back([this, buffer, &in_box_vectors, chunk_size, row, col]() {
			auto& boundingBoxes = in_box_vectors[row * c_threadSplits + col];
			processBoundingBoxesChunk(buffer, boundingBoxes, chunk_size, row * chunk_size, col * chunk_size);
		});
	}

	std::for_each(std::execution::par_unseq, tasks.begin(), tasks.end(), [](std::function<void()>& task) { task(); });
	
	size_t totalSize = 0;
    for (const auto& vec : in_box_vectors) {
        totalSize += vec.size();
    }
	boxes.reserve(totalSize);
	for (const auto& vec : in_box_vectors) {
        boxes.insert(boxes.end(), vec.begin(), vec.end());
    }
	m_boundingBoxBuffer.m_data = boxes;
}
