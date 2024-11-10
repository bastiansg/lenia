#include "simulation.hpp"
#include <unordered_set>
#include <stack>

namespace Lenia {
	Simulation::Simulation(const size_t w, const size_t h, const size_t scale, const ColorPalette& colorPalette) {
		m_w = w;
		m_h = h;
		m_scale = scale;
		m_size = w * h;
		m_mass = 0.f;
		m_centerOfMass = Vec2<u32> { 0, 0 };
		m_readBuffer = Buffer<f32>(BufferBinding::READ, m_size);
		m_writeBuffer = Buffer<f32>(BufferBinding::WRITE, m_size);
		m_dataBuffer = Buffer<ShaderData>(BufferBinding::DATA, {ShaderData{0,0,0}});
		m_colorBuffer = Buffer<ColorPalette>(BufferBinding::COLOR, {colorPalette});
		m_boundingBoxBuffer = Buffer<BoundingBox>(BufferBinding::BOUNDING_BOXES);
		ApplyColorPalette(colorPalette);
	}

	Simulation::~Simulation() {
		glDeleteBuffers(1, &m_readBuffer.m_ID);
		glDeleteBuffers(1, &m_writeBuffer.m_ID);
	}

	void Simulation::PlaceAnimal(Animal *animal, const u32 x, const u32 y) noexcept {
		f32* animal_cells = animal->GetCells();
		for (size_t i = 0; i < animal->m_h; i++)
		for (size_t j = 0; j < animal->m_w; j++)
		for (size_t k = 0; k < m_scale; k++)
		for (size_t l = 0; l < m_scale; l++)
			m_readBuffer[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
		m_readBuffer.updateData();
		m_writeBuffer.updateData();
		delete[] animal_cells;
	}

	void Simulation::ReadShaderDataBuffer() noexcept {
		m_dataBuffer.getDataFromShader();
		ShaderData shaderData = m_dataBuffer.m_data[0];
		m_mass = (f64)shaderData.sum / 10000.f;

		f32 y = shaderData.centerOfMassY / f32(100.0 * m_mass);
		f32 x = shaderData.centerOfMassX / f32(100.0 * m_mass);

		m_centerOfMass = { u32(x), u32(y) };
	}

	void Simulation::Update() noexcept {
		SwapBuffers();
		ReadShaderDataBuffer();
		CalculateBoundingBoxes();
		m_dataBuffer.m_data[0] = ShaderData { 0, 0, 0 };
		m_dataBuffer.updateData();
		m_boundingBoxBuffer.updateData();
	}

	void Simulation::SwapBuffers() noexcept {
		m_readBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_readBuffer.m_binding));
		m_writeBuffer.m_binding = static_cast<BufferBinding>(1 - static_cast<i8>(m_writeBuffer.m_binding));
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_readBuffer.m_binding), m_writeBuffer.m_ID);
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, static_cast<GLuint>(m_writeBuffer.m_binding), m_readBuffer.m_ID);
	}

	void Simulation::ApplyColorPalette(const ColorPalette& colorPalette) noexcept {
		m_colorBuffer.m_data[0] = colorPalette;
		m_colorBuffer.updateData();
	}

	void Simulation::CalculateBoundingBoxes() noexcept {
		m_readBuffer.getDataFromShader();
		std::vector<BoundingBox> boxes = std::vector<BoundingBox>();	
		i32 h = static_cast<i32>(m_h);
		i32 w = static_cast<i32>(m_w);
		u16 padding = 50;
		for (u32 i = 0; i < m_h; ++i) 
		for (u32 j = 0; j < m_w; ++j) {
			b8 new_point = true;
			for (auto& box : boxes) {
				if (box(j, i, w, h)) {
					new_point = false;
					j = box.m_x1;
					break;
				}
			}
			if (new_point && m_readBuffer[i * m_w + j] > 0) {
				boxes.emplace_back(j - padding, i - padding, j + padding, i + padding);
			}
		}
		m_boundingBoxBuffer.m_data = boxes;
	}
}