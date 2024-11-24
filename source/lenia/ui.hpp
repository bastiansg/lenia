#pragma once
#include "animal.hpp"
#include "simulation.hpp"

namespace Lenia::UI {
    void statsText(f64 updatetime, const Simulation& sim, const Animal& animal, const u16 currentAnimalIdx, const u16 maxAnimals);
    void kernelWindow(const Animal& animal);
    void directionVector(const Simulation& sim);
    void modeChangeText(const std::string& text);
}
