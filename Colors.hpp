#pragma once
#include "gl_setup.hpp"

#define VECTOR4_ALIGNMENT 16
#define MAX_COLORS 16

namespace Lenia {

	struct alignas(VECTOR4_ALIGNMENT) Color {
		f32 R;
		f32 G;
		f32 B;
	};

	struct ColorPalette {
		u32 n;
		Color colors[MAX_COLORS];
	};

	const static ColorPalette Magma = 
	{6, {
			{0.00f, 0.00f, 0.10f},
			{0.33f, 0.00f, 0.33f},
			{0.00f, 0.00f, 1.00f},
			{0.00f, 1.00f, 0.00f},
			{1.00f, 1.00f, 0.00f},
			{1.00f, 0.66f, 0.00f},
			{1.00f, 0.00f, 0.00f}
	}};
	const static ColorPalette Greyscale = 
	{1, {
			{0.00f, 0.00f, 0.00f},
			{1.00f, 1.00f, 1.00f}
	}};
}