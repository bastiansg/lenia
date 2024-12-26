#pragma once

#include "lenia/core.hpp"

namespace Lenia::FFT {
    extern "C" std::vector<std::complex<f32>> fft_r2c(const std::vector<f32> &buffer, const i32 w, const i32 h);
}