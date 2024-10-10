#pragma once
#include "gl_setup.h"
#include <map>

#define MAX_COLORS 32

namespace Lenia {

	struct alignas(16) Color {
		f32 R;
		f32 G;
		f32 B;
		f32 A;
	};

	struct ColorMap {
		u32 N;
		Color Colors[MAX_COLORS];
	};

	static const std::map<std::string, ColorMap> ColorMaps = {
		{"Magma", {6, {
			{0.00f, 0.00f, 0.00f, 0.00f},
			{0.33f, 0.00f, 0.33f, 0.00f},
			{0.00f, 0.00f, 1.00f, 0.00f},
			{0.00f, 1.00f, 0.00f, 0.00f},
			{1.00f, 1.00f, 0.00f, 0.00f},
			{1.00f, 0.66f, 0.00f, 0.00f},
			{1.00f, 0.00f, 0.00f, 0.00f}
		}}},
		{"Greyscale", {1, {
			{0.00f, 0.00f, 0.00f},
			{1.00f, 1.00f, 1.00f}
		}}},
	};
}