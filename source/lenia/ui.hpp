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
        f32 dt;
        bool saveRequested = false;
    };

    struct TextureLoadRequest {
        char filepath[512] = {};
        bool loadRequested = false;
        std::string statusMessage;
    };

    struct InfoPanelState {
        StatsEditable stats;
        TextureLoadRequest textureRequest;
        ShaderControls &shaderControls;
        bool shaderSaveRequested = false;
        bool shaderResetRequested = false;
        bool shadersEnabled = true;
        i32 fluidQuality = 3;
        bool decayOnExplosion = false;
        bool decayActive = false;
        f32 decayMassThreshold = 5000.f;
        i32 paletteIndex = 0;
        bool paletteChanged = false;
    };

    void infoPanel(f64 updatetime, const Simulation &sim, const Animal &animal, InfoPanelState &state, const u16 maxAnimals, bool *open);
    void playerStatsText(const Animal& animal, const Simulation& sim, const ImVec2 screenPosition);
    void directionVector(const ImVec2 screenPosition, const glm::vec2& direction);
    void modeChangeText(const std::string &text);
    void pausedText() noexcept;
    const AnimalInfo& searchAnimal(const std::vector<AnimalInfo> &animals) noexcept;
    std::string fuzzysearch(const std::string &search, const std::vector<AnimalInfo> &animals) noexcept;
    i32 lev(const std::string &a, const std::string &b) noexcept;
    std::string tolower(const std::string &str) noexcept;
}
