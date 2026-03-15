#pragma once
#include "animal.hpp"
#include "simulation.hpp"
#include <string>

namespace Lenia::UI {

    struct StatsEditable {
        i32 scale;
        i32 r;
        i32 animalIdx;
        f32 mu;
        f32 sigma;
        b8 saveRequested = false;
    };

    struct TextureLoadRequest {
        char filepath[512] = {};
        b8 loadRequested = false;
        std::string statusMessage;
    };

    struct InfoPanelState {
        StatsEditable stats;
        TextureLoadRequest textureRequest;
        ShaderControls &shaderControls;
        b8 shaderSaveRequested = false;
        b8 shaderResetRequested = false;
    };

    void infoPanel(f64 updatetime, const Simulation &sim, const Animal &animal, InfoPanelState &state, const u16 maxAnimals, b8 *open);
    void playerStatsText(const Animal& animal, const Simulation& sim, const ImVec2 screenPosition);
    void directionVector(const ImVec2 screenPosition, const glm::vec2& direction);
    void modeChangeText(const std::string &text);
    void pausedText() noexcept;
    const AnimalInfo& searchAnimal(const std::vector<AnimalInfo> &animals) noexcept;
    std::string fuzzysearch(const std::string &search, const std::vector<AnimalInfo> &animals) noexcept;
    i32 lev(const std::string &a, const std::string &b) noexcept;
    std::string tolower(const std::string &str) noexcept;
}
