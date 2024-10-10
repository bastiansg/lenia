#pragma once
#include "gl_setup.h"
#include <map>

namespace Lenia {

	typedef struct Color {
		f32 R;
		f32 G;
		f32 B;
		f32 padding;
	} Color;

	typedef struct ColorMap {
		u32 N;
		Color* Colors;
	} ColorMap;

	static const std::map<std::string, ColorMap> ColorMaps = {
		{"Magma", {6, new Color[] {
			{0.00f, 0.00f, 0.00f, 0.00f},
			{0.33f, 0.00f, 0.33f, 0.00f},
			{0.00f, 0.00f, 1.00f, 0.00f},
			{0.00f, 1.00f, 0.00f, 0.00f},
			{1.00f, 1.00f, 0.00f, 0.00f},
			{1.00f, 0.66f, 0.00f, 0.00f},
			{1.00f, 0.00f, 0.00f, 0.00f}
		}}},
		{"Greyscale", {1, new Color[] {
			{0.00f, 0.00f, 0.00f},
			{1.00f, 1.00f, 1.00f}
		}}},
	};
}