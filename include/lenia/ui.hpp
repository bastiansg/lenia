#pragma once
#include "lenia/animal.hpp"
#include "lenia/simulation.hpp"

namespace Lenia::UI {
    void statsText(const Simulation& sim, const Animal& animal);
    void kernelWindow(const Animal& animal);
    GLuint textureFromPixelData(std::vector<f32> data, i32 w, i32 height);
    void modeChangeText(const std::string& text);
}
