#pragma once

#include "core.hpp"

namespace Lenia {
    std::vector<c64> fft_r2c(const std::vector<f32> &buffer, const std::size_t w);
}