#pragma once
#include "animal.hpp"
#include "simulation.hpp"

namespace Lenia::UI {
    void statsText(f64 updatetime, const Simulation &sim, const Animal &animal, const u16 currentAnimalIdx, const u16 maxAnimals);
    void playerStatsText(const Animal& animal, const Simulation& sim, const ImVec2 screenPosition);
    void kernelWindow(const Animal &animal);
    void directionVector(const ImVec2 screenPosition, const glm::vec2& direction);
    void modeChangeText(const std::string &text);
    void pausedText() noexcept;
    void shaderControlsWindow(ShaderControls &controls, b8 *open, b8 &saveRequested, b8 &resetRequested) noexcept;
    const AnimalInfo& searchAnimal(const std::vector<AnimalInfo> &animals) noexcept;
    std::string fuzzysearch(const std::string &search, const std::vector<AnimalInfo> &animals) noexcept;
    i32 lev(const std::string &a, const std::string &b) noexcept;
    std::string tolower(const std::string &str) noexcept;
}
