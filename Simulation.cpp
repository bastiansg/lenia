#pragma once
#include "Simulation.hpp"
#include <unordered_set>
#include <stack>

namespace Lenia {
	Simulation::Simulation(const size_t W, const size_t H, const size_t scale, const ColorPalette& colorPalette) noexcept : 
		m_w(W), m_h(H), m_scale(scale), m_size(m_w * m_h), m_mass(0.), m_centerOfMass({0, 0}) {
		defaultShaderData = ShaderData{ 0, 0, 0, };
		m_boundingBoxBuffer = Buffer<BoundingBox>(0, BufferBinding::BOUNDING_BOXES);
		m_dataBuffer = Buffer<ShaderData>(1, BufferBinding::DATA);
		m_readBuffer = Buffer<f32>(m_size, BufferBinding::READ);
		m_writeBuffer = Buffer<f32>(m_size, BufferBinding::WRITE);
		m_colorBuffer = Buffer<ColorPalette>(1, BufferBinding::COLOR);
		ApplyColorPalette(colorPalette);
	}

	Simulation::~Simulation() {
		glDeleteBuffers(1, &m_readBuffer.m_ID);
		glDeleteBuffers(1, &m_writeBuffer.m_ID);
	}

	void Simulation::PlaceAnimal(Animal *animal, const u32 x, const u32 y) noexcept {
		const std::unique_ptr<f32[]> animal_cells = animal->GetCells();
		for (size_t i = 0; i < animal->m_h; i++)
		for (size_t j = 0; j < animal->m_w; j++)
		for (size_t k = 0; k < m_scale; k++)
		for (size_t l = 0; l < m_scale; l++)
			m_readBuffer.m_data[(x + i * m_scale + k) % m_h * m_w + (y + j * m_scale + l) % m_w] = animal_cells[i * animal->m_w + j];
		m_readBuffer = Buffer<f32>(m_size, BufferBinding::READ);
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
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)BufferBinding::DATA, m_dataBuffer.m_ID);
		glBufferSubData(GL_SHADER_STORAGE_BUFFER, 0, sizeof(ShaderData), &defaultShaderData);
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)BufferBinding::BOUNDING_BOXES, m_boundingBoxBuffer.m_ID);
		glBufferSubData(GL_SHADER_STORAGE_BUFFER, 0, m_boundingBoxBuffer.m_size * sizeof(BoundingBox), &m_boundingBoxBuffer.m_data);
	}

	void Simulation::SwapBuffers() noexcept {
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - m_readWriteBinding, m_writeBuffer.m_ID);
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, m_readWriteBinding, m_readBuffer.m_ID);
		m_readWriteBinding = 1 - m_readWriteBinding;
	}

	void Simulation::ApplyColorPalette(const ColorPalette& colorPalette) noexcept {
		*m_colorBuffer.m_data.get() = colorPalette;
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
		if (boxes.size() > 0)
			m_boundingBoxBuffer = Buffer<BoundingBox>(boxes.size(), BufferBinding::BOUNDING_BOXES, &boxes[0]);
		else
			m_boundingBoxBuffer = Buffer<BoundingBox>();
	}
}