#pragma once
#include "lenia/animal.hpp"
#include "lenia/simulation.hpp"

namespace Lenia::Core {
    void statsText(const Simulation& sim, const Animal& animal);
    void modeChangeText(const std::string& text);
}
