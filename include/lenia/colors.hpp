#pragma once
#include "lenia/core.hpp"

namespace Lenia::Core {
	constexpr static ColorPalette Magma = 
	{6, {
			{0.00f, 0.00f, 0.10f},
			{0.33f, 0.00f, 0.33f},
			{0.00f, 0.00f, 1.00f},
			{0.00f, 1.00f, 0.00f},
			{1.00f, 1.00f, 0.00f},
			{1.00f, 0.66f, 0.00f},
			{1.00f, 0.00f, 0.00f}
	}};
	constexpr static ColorPalette Greyscale = 
	{1, {
			{0.00f, 0.00f, 0.00f},
			{1.00f, 1.00f, 1.00f}
	}};
}