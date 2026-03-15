#include "texture_loader.hpp"
#include "stb_image.h"
#include <iostream>

Lenia::LoadedTexture Lenia::loadTextureFromFile(const std::string& filepath) noexcept {
    LoadedTexture result;

    if (filepath.empty()) {
        std::cerr << "Texture loader: empty filepath" << std::endl;
        return result;
    }

    i32 channels;
    u8* pixels = stbi_load(filepath.c_str(), &result.width, &result.height, &channels, 1);
    if (!pixels) {
        std::cerr << "Texture loader: failed to load '" << filepath << "': " << stbi_failure_reason() << std::endl;
        return result;
    }

    if (result.width > 1024 || result.height > 1024) {
        std::cerr << "Texture loader: image must be at most 1024x1024, got " << result.width << "x" << result.height << std::endl;
        stbi_image_free(pixels);
        result.width = 0;
        result.height = 0;
        return result;
    }

    result.cells.resize(result.width * result.height);
    for (i32 i = 0; i < result.width * result.height; ++i) {
        result.cells[i] = pixels[i] / 255.f;
    }

    stbi_image_free(pixels);
    return result;
}
