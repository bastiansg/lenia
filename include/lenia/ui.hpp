#pragma once
#include "lenia/animal.hpp"
#include "lenia/simulation.hpp"

namespace Lenia::UI {
    void statsText(const Simulation& sim, const Animal& animal);
    void kernelWindow(const Animal& animal);
    void modeChangeText(const std::string& text);
}
