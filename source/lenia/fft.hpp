#pragma once

#include "core.hpp"

namespace Lenia {
    std::vector<std::complex<f32>> fft_r2c(const std::vector<f32> &buffer, const i32 w);
}