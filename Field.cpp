#pragma once
#include "Field.hpp"

namespace Lenia {
	Field::Field(const size_t W, const size_t H, const size_t scale, const std::string& colorMapName) : 
		w(W), h(H), scale(scale), size(w* h), mass(0.), centerOfMass({0, 0}), shaderData(emptyShaderData) {
		SetColorMap(colorMapName);
		SetupCells();
		Lenia::InitBuffer<void*>(&dataBufferID, nullptr, sizeof(f32) * 100, BufferBindings::DATA);
	}

	Field::~Field() {
		glDeleteBuffers(1, &readBufferID);
		glDeleteBuffers(1, &writeBufferID);
	}

	void Field::PlaceAnimal(Animal& animal, const u32 x, const u32 y) noexcept {
		const std::unique_ptr<f32[]> animal_cells = animal.GetCells();
		for (size_t i = 0; i < animal.h; i++)
		for (size_t j = 0; j < animal.w; j++)
		for (size_t k = 0; k < scale; k++)
		for (size_t l = 0; l < scale; l++)
			cells[(x + i * scale + k) % h * w + (y + j * scale + l) % w] = animal_cells[i * animal.w + j];
		Lenia::InitBuffer<f32>(&readBufferID, cells.get(), size, 1);
	}

	void Field::SetupCells() noexcept {
		cells = std::make_unique<f32[]>(size);
		std::fill(cells.get(), cells.get() + size, 0.f);
		Lenia::InitBuffer<f32>(&readBufferID, cells.get(), size, BufferBindings::READ);
		Lenia::InitBuffer<f32>(&writeBufferID, nullptr, size, BufferBindings::WRITE);
	}

	void Field::ReadShaderDataBuffer() noexcept {
		glGetNamedBufferSubData(dataBufferID, 0, sizeof(ShaderData), &shaderData);
		mass = (f64)shaderData.sum / 10000.f;
		f32 y = shaderData.centerOfMassY / f32(100.0 * mass);
		f32 x = shaderData.centerOfMassX / f32(100.0 * mass);
		centerOfMass = std::pair<u32, u32>(u32(x), u32(y));
	}

	void Field::Update() noexcept {
		SwapBuffers();
		ReadShaderDataBuffer();
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, BufferBindings::DATA, dataBufferID);
		glBufferSubData(GL_SHADER_STORAGE_BUFFER, 0, sizeof(shaderData), &emptyShaderData);
	}

	void Field::SwapBuffers() noexcept {
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - bufferBinding, writeBufferID);
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, bufferBinding, readBufferID);
		bufferBinding = 1 - bufferBinding;
	}

	void Field::SetColorMap(const std::string& colorMapName) noexcept {
		colorPalette = colorPalettes.at(colorMapName);
		Lenia::InitBuffer<ColorPalette>(&colorBufferID, &colorPalette, 1, BufferBindings::COLOR);
	}

	void Field::PushUniforms() const noexcept {
		glUniform1ui(0, (GLuint)w);
		glUniform1ui(1, (GLuint)h);
		glUniform2ui(2, (GLuint)centerOfMass.first, (GLuint)centerOfMass.second);
	}
}