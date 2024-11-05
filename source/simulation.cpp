#pragma once
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
		defaultShaderData = ShaderData { 0, 0, 0 };
		m_shaderData = defaultShaderData;
		m_boundingBoxBuffer = Buffer<BoundingBox>(BufferBinding::BOUNDING_BOXES);
		m_dataBuffer = Buffer<ShaderData>(BufferBinding::DATA, 1);
		m_readBuffer = Buffer<f32>(BufferBinding::READ, m_size);
		m_writeBuffer = Buffer<f32>(BufferBinding::WRITE, m_size);
		m_colorBuffer = Buffer<ColorPalette>(BufferBinding::COLOR, std::vector<ColorPalette> {colorPalette});
		ApplyColorPalette(colorPalette);
	}

	Simulation::~Simulation() {
		glDeleteBuffers(1, &m_readBuffer.m_ID);
		glDeleteBuffers(1, &m_writeBuffer.m_ID);
	}

	void Simulation::PlaceAnimal(Animal *animal, const u32 x, const u32 y) noexcept {
		f32* animal_cells = animal->GetCells();
		m_readBuffer.m_data.resize(animal->m_w * animal->m_h);
		for (size_t i = 0; i < animal->m_h; i++)
		for (size_t j = 0; j < animal->m_w; j++)
		for (size_t k = 0; k < m_scale; k++)
		for (size_t l = 0; l < m_scale; l++)
			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
		delete[] animal_cells;
	}

	void Simulation::ReadShaderDataBuffer() noexcept {
		m_dataBuffer.getDataFromShader();

		m_mass = (f64)m_shaderData.sum / 10000.f;

		f32 y = m_shaderData.centerOfMassY / f32(100.0 * m_mass);
		f32 x = m_shaderData.centerOfMassX / f32(100.0 * m_mass);

		m_centerOfMass = { u32(x), u32(y) };
	}

	void Simulation::Update() noexcept {
		SwapBuffers();
		ReadShaderDataBuffer();
		CalculateBoundingBoxes();
		m_dataBuffer.m_data[0] = defaultShaderData;
		m_boundingBoxBuffer.updateData();
	}

	void Simulation::SwapBuffers() noexcept {
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, m_readWriteBinding, m_readBuffer.m_ID);
		m_readWriteBinding = 1 - m_readWriteBinding;
	}

	void Simulation::ApplyColorPalette(const ColorPalette& colorPalette) noexcept {
		m_colorBuffer.m_data[0] = colorPalette;
	}

	BoundingBox Simulation::FillBoundingBox(const u32 x, const u32 y, const u16 padding) const noexcept {
		std::stack<Vec2<u32>> points = std::stack<Vec2<u32>>();

		for (u32 i = 0; i < padding; i++) 
		for (u32 j = 0; j < padding; j++) {
			points.push({ x + i, y + j });
			points.push({ x - i, y - j });
			points.push({ x + i, y - j });
			points.push({ x - i, y + j });
		}

		BoundingBox box = BoundingBox(x - padding, y - padding, x + padding, y + padding);
		std::unordered_set<Vec2<u32>, Vec2Hash<u32>> checked = std::unordered_set<Vec2<u32>, Vec2Hash<u32>>();

		while (!points.empty()) {
			Vec2<u32> current = points.top();
			points.pop();

			if (checked.find(current) != checked.end()) {
				continue;
			}

			checked.insert(current);
			if (m_readBuffer.m_data[current.y * m_w + current.x] > 0) {
				box.expand(current.x, current.y, m_w);
				for (u32 i = 0; i < padding; i++)
				for (u32 j = 0; j < padding; j++) {
					points.push({ x + i, y + j });
					points.push({ x - i, y - j });
					points.push({ x + i, y - j });
					points.push({ x - i, y + j });
				}
			}
		}

		return box;
	}


	void Simulation::CalculateBoundingBoxes() noexcept {
		m_readBuffer.getDataFromShader();
		std::vector<BoundingBox> boxes = std::vector<BoundingBox>();	
		for (size_t i = 0; i < m_h; i++) 
		for (size_t j = 0; j < m_w; j++) {
			for (const auto& box : boxes) {
				if (box.contains(i, j, m_w)) {
					break;
				}
			}
			if (m_readBuffer.m_data[i * m_w + j] > 0) {
				boxes.push_back(FillBoundingBox(i, j, 1));
			}
		}
		m_boundingBoxBuffer.m_data = boxes;
	}
}