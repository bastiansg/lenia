#pragma once
#include "Field.h"
#include <immintrin.h>
#include <chrono>

namespace Lenia {
	Field::Field(const size_t W, const size_t H, const size_t scale, const std::string& colorMapName) : W(W), H(H), Scale(scale) {
		this->Size = W * H;
		this->BufferBinding = BufferBindings::WRITE;
		this->Mass = 0;
		this->CenterOfMass = { 0, 0 };
		this->ShaderData = EmptyShaderData;
		SetColorMap(colorMapName);
		SetupCells();
		Lenia::InitBuffer<void*>(&DataBuffer, nullptr, sizeof(f32) * 100, BufferBindings::DATA);
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
			Cells[(x + i * Scale + k) % H * W + (y + j * Scale + l) % W] = animal_cells[i * animal.W + j];
		Lenia::InitBuffer<f32>(&ReadBuffer, Cells.get(), Size, 1);
	}

	void Field::SetupCells() noexcept {
		Cells = std::make_unique<f32[]>(Size);
		std::fill(Cells.get(), Cells.get() + Size, 0.f);
		Lenia::InitBuffer<f32>(&ReadBuffer, Cells.get(), Size, BufferBindings::READ);
		Lenia::InitBuffer<f32>(&WriteBuffer, nullptr, Size, BufferBindings::WRITE);
	}

	void Field::ReadShaderDataBuffer() noexcept {
		glGetNamedBufferSubData(DataBuffer, 0, sizeof(ShaderData), &ShaderData);
		this->Mass = (f64)ShaderData.Sum / 10000.f;
		f32 y = ShaderData.CenterOfMassY / f32(100.0 * Mass);
		f32 x = ShaderData.CenterOfMassX / f32(100.0 * Mass);
		this->CenterOfMass = std::pair<u32, u32>(u32(x), u32(y));
	}

	void Field::Update() noexcept {
		SwapBuffers();
		ReadShaderDataBuffer();
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, BufferBindings::DATA, DataBuffer);
		glBufferSubData(GL_SHADER_STORAGE_BUFFER, 0, sizeof(ShaderData), &EmptyShaderData);
	}

	void Field::SwapBuffers() noexcept {
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - BufferBinding, WriteBuffer);
		glBindBufferBase(GL_SHADER_STORAGE_BUFFER, BufferBinding, ReadBuffer);
		BufferBinding = 1 - BufferBinding;
	}

	void Field::SetColorMap(const std::string& colorMapName) noexcept {
		ColorMap = ColorMaps.at(colorMapName);
		Lenia::InitBuffer(&ColorBuffer, nullptr, sizeof(u32) + (ColorMap.N + 1ll) * sizeof(Color), BufferBindings::COLOR);
		glNamedBufferSubData(ColorBuffer, 0, sizeof(u32), &ColorMap.N);
		glNamedBufferSubData(ColorBuffer, 4, sizeof(Color) * (ColorMap.N + 1ll), ColorMap.Colors);
	}
}