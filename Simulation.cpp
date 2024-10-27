#pragma once
#include "Simulation.hpp"

namespace Lenia {
	Simulation::Simulation(const size_t W, const size_t H, const size_t scale, const ColorPalette& colorPalette) noexcept : 
		w(W), h(H), scale(scale), size(w * h), mass(0.), centerOfMass({0, 0}) {
		defaultShaderData = ShaderData{ 0, 0, 0, };
		boundingBox = { 0, {0, 0}, {W, H} };
		ApplyColorPalette(colorPalette);
		SetupCells();
		Lenia::InitBuffer<ShaderData>(&dataBufferID, &shaderData, BufferBinding::DATA);
	}

	Simulation::~Simulation() {
		glDeleteBuffers(1, &readBufferID);
		glDeleteBuffers(1, &writeBufferID);
	}

	void Simulation::PlaceAnimal(Animal& animal, const u32 x, const u32 y) noexcept {
		const std::unique_ptr<f32[]> animal_cells = animal.GetCells();
		for (size_t i = 0; i < animal.h; i++)
		for (size_t j = 0; j < animal.w; j++)
		for (size_t k = 0; k < scale; k++)
		for (size_t l = 0; l < scale; l++)
			cells[(x + i * scale + k) % h * w + (y + j * scale + l) % w] = animal_cells[i * animal.w + j];
		Lenia::InitBuffer<f32>(&readBufferID, cells.get(), size, BufferBinding::READ);
		boundingBox.padding = (u16)animal.r / 2;
	}

	void Simulation::SetupCells() noexcept {
		cells = std::make_unique<f32[]>(size);
		std::fill(cells.get(), cells.get() + size, 0.f);
		Lenia::InitBuffer<f32>(&readBufferID, cells.get(), size, BufferBinding::READ);
		Lenia::InitBuffer<f32>(&writeBufferID, nullptr, size, BufferBinding::WRITE);
	}

	void Simulation::ReadShaderDataBuffer() noexcept {
		glGetNamedBufferSubData(dataBufferID, 0, sizeof(ShaderData), &shaderData);

		mass = (f64)shaderData.sum / 10000.f;

		f32 y = shaderData.centerOfMassY / f32(100.0 * mass);
		f32 x = shaderData.centerOfMassX / f32(100.0 * mass);

		centerOfMass = { u32(x), u32(y) };

		//boundingBox.topLeft = { shaderData.minLeft - boundingBox.padding, shaderData.minTop - boundingBox.padding };
		//boundingBox.bottomRight = { shaderData.maxRight + boundingBox.padding, shaderData.maxBottom + boundingBox.padding };
	}

	void Simulation::Update() noexcept {
		SwapBuffers();
		ReadShaderDataBuffer();
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)BufferBinding::DATA, dataBufferID);
		glBufferSubData(GL_SHADER_STORAGE_BUFFER, 0, sizeof(ShaderData), &defaultShaderData);
	}

	void Simulation::SwapBuffers() noexcept {
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - bufferBinding, writeBufferID);
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, bufferBinding, readBufferID);
		bufferBinding = 1 - bufferBinding;
	}

	void Simulation::ApplyColorPalette(const ColorPalette& colorPalette) noexcept {
		this->colorPalette = colorPalette;
		Lenia::InitBuffer<const ColorPalette>(&colorBufferID, &colorPalette, 1, BufferBinding::COLOR);
	}
}