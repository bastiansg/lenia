#pragma once
#include "animal.hpp"
#include "simulation.hpp"

namespace Lenia::UI {
    void statsText(f64 updatetime, const Simulation& sim, const Animal& animal, const u16 currentAnimalIdx, const u16 maxAnimals);
    void kernelWindow(const Animal& animal);
    void directionVector(const Simulation& sim);
    void modeChangeText(const std::string& text);
    void pausedText() noexcept;
    const AnimalInfo& searchAnimal(const std::vector<AnimalInfo>& animals) noexcept;
    std::string fuzzysearch(const std::string& search, const std::vector<AnimalInfo>& animals) noexcept;
    i32 lev(const std::string& a, const std::string& b) noexcept;
    std::string tolower(const std::string& str) noexcept;
}
