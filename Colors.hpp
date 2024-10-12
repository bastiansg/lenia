#pragma once
#include "gl_setup.hpp"
#include <map>



namespace Lenia {
	
	constexpr static const u8 VEC4_ALIGNMENT = 16;
	constexpr static const u32 MAX_COLORS = 16;

	struct alignas(VEC4_ALIGNMENT) Color {
		f32 R;
		f32 G;
		f32 B;
	};

	struct ColorPalette {
		u32 n;
		Color colors[MAX_COLORS];
	};

	static const std::map<std::string, ColorPalette> colorPalettes = {
		{"Magma", {6, {
			{0.00f, 0.00f, 0.10f},
			{0.33f, 0.00f, 0.33f},
			{0.00f, 0.00f, 1.00f},
			{0.00f, 1.00f, 0.00f},
			{1.00f, 1.00f, 0.00f},
			{1.00f, 0.66f, 0.00f},
			{1.00f, 0.00f, 0.00f}
		}}},
		{"Greyscale", {1, {
			{0.00f, 0.00f, 0.00f},
			{1.00f, 1.00f, 1.00f}
		}}},
	};
}