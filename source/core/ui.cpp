#include "lenia/ui.hpp"
#include <algorithm>


void Lenia::UI::statsText(const Lenia::Simulation& sim, const Lenia::Animal& animal) {
    char buffer[1024];
    ImGui::SetNextWindowPos(ImVec2(5, 5), ImGuiCond_Always);
    constexpr ImGuiWindowFlags window_flags = ImGuiWindowFlags_NoDecoration | 
                                    ImGuiWindowFlags_NoMove |
                                    ImGuiWindowFlags_NoBackground | 
                                    ImGuiWindowFlags_NoSavedSettings |
                                    ImGuiWindowFlags_AlwaysAutoResize;
    ImGui::Begin("TopLeftText", nullptr, window_flags);
    ImGui::SetWindowFontScale(1.75f);
    sprintf_s(buffer, 1024, "size: [%llu, %llu], scale: %u\ncurrent animal (at 0x%p): %s\nbounding boxes: %llu\narea computed: %.2f\nmass: %4.2f\ndelta: %+08.2f (%+.4f%%)\ntime bounding boxes: %4.2f ms (%u threads)", 
        sim.m_w,
        sim.m_h,
        sim.m_scale,
        &animal,
        std::string(animal.m_taxonomy).c_str(),
        sim.getNBoundingBoxes(),
        sim.calcAreaComputed(),
        sim.m_mass,
        sim.m_massDelta,
        sim.m_massDelta / sim.m_mass,
        sim.m_updateTimeBoxes.count() / 1000.f,
        Lenia::Simulation::getNChunks());
    ImGui::Text("%s", buffer);
    ImGui::End();
}


GLuint testTexture() {
    u8 pixels[] = {
        255, 255, 255,  // Pixel 1 (white)
        255, 255, 255,  // Pixel 2 (white)
        255, 255, 255,  // Pixel 3 (white)
        255, 255, 255   // Pixel 4 (white)
    };

    GLuint textureID;
    glGenTextures(1, &textureID);
    glBindTexture(GL_TEXTURE_2D, textureID);

    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, 2, 2, 0, GL_RGB, GL_UNSIGNED_BYTE, pixels);

    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);

    glBindTexture(GL_TEXTURE_2D, 0);

    return textureID;
}



void Lenia::UI::kernelWindow(const Animal& animal) {
    constexpr ImGuiWindowFlags window_flags = ImGuiWindowFlags_AlwaysAutoResize;
    ImGui::SetNextWindowPos(ImVec2(5, 5), ImGuiCond_Always);
    ImGui::SetNextWindowSize(ImVec2(300, 300));
    ImGui::Begin("Kernel", nullptr, window_flags);
    ImGui::Image((ImTextureID)(intptr_t)animal.m_kernelTexture, ImVec2(animal.m_r * animal.m_scale * 2, animal.m_r * animal.m_scale * 2));
    ImGui::End();
}

void Lenia::UI::modeChangeText(const std::string& text) {
    ImGui::SetNextWindowPos(ImVec2(1000, 5), ImGuiCond_Always);
    constexpr ImGuiWindowFlags window_flags = ImGuiWindowFlags_NoDecoration | 
                                    ImGuiWindowFlags_NoMove |
                                    ImGuiWindowFlags_NoBackground | 
                                    ImGuiWindowFlags_NoSavedSettings |
                                    ImGuiWindowFlags_AlwaysAutoResize;
    ImGui::Begin("ModeChangeText", nullptr, window_flags);
    ImGui::SetWindowFontScale(1.75f);
    ImGui::Text("%s", text.c_str());
    // for (size_t i = 0; i < 100; ++i) {

    // }
    ImGui::End();
}