#pragma once
#include "Field.h"
#include <immintrin.h>
#include <chrono>

namespace Lenia {
	Field::Field(const size_t W, const size_t H, const size_t scale) {
		this->W = W;
		this->H = H;
		this->Scale = scale;
		this->Size = W * H;
		this->BufferBinding = 0;
		this->Mass = 0;
		this->CenterOfMass = { 0, 0 };
		this->shaderData = EmptyShaderData;
		SetupCells();
		Lenia::InitBuffer<void*>(&DataBuffer, nullptr, sizeof(f32) * 100, 3);
	}

	Field::~Field() {
		glDeleteBuffers(1, &ReadBuffer);
		glDeleteBuffers(1, &WriteBuffer);
	}

	void Field::PlaceAnimal(Animal& animal, const u32 x, const u32 y) noexcept {
		const std::unique_ptr<f32[]> animal_cells = animal.GetCells();
		for (size_t i = 0; i < animal.H; i++)
		for (size_t j = 0; j < animal.W; j++)
		for (size_t k = 0; k < Scale; k++)
		for (size_t l = 0; l < Scale; l++)
			Cells[(x + i * Scale + k) * W + (y + j * Scale + l)] = animal_cells[i * animal.W + j];
		Lenia::InitBuffer<f32>(&ReadBuffer, Cells.get(), Size, 1);
	}

	void Field::SetupCells() noexcept {
		Cells = std::make_unique<f32[]>(Size);
		std::fill(Cells.get(), Cells.get() + Size, 0.f);
		Lenia::InitBuffer<f32>(&ReadBuffer, Cells.get(), Size, 1);
		Lenia::InitBuffer<f32>(&WriteBuffer, nullptr, Size, 0);
	}

	void Field::ReadShaderBuffer() noexcept {
		ShaderData* data = new ShaderData[1];
		glGetNamedBufferSubData(DataBuffer, 0, sizeof(ShaderData), data);
		shaderData = data[0];
		this->Mass = (f64)shaderData.Sum / 1e6;
		this->CenterOfMass = { shaderData.CenterOfMassX / 1e6, shaderData.CenterOfMassY / 1e6};
		std::cout << "Center of Mass: (" << CenterOfMass.first << ", " << CenterOfMass.second << ")" << std::endl;
		delete[] data;
	}

	void Field::Update() noexcept {
		SwapBuffers();
		ReadShaderBuffer();
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 3, DataBuffer);
		glBufferSubData(GL_SHADER_STORAGE_BUFFER, 0, sizeof(ShaderData), &EmptyShaderData);
	}

	void Field::SwapBuffers() noexcept {
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - BufferBinding, WriteBuffer);
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, BufferBinding, ReadBuffer);
		BufferBinding = 1 - BufferBinding;
	}
}