#pragma once
#include "core.hpp"
#include <string>
#include <vector>

namespace Lenia {

    struct LoadedTexture {
        std::vector<f32> cells;
        i32 width = 0;
        i32 height = 0;
    };

    [[nodiscard]] LoadedTexture loadTextureFromFile(const std::string& filepath) noexcept;

}
