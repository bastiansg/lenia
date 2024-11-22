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
    kernelWindow(animal);
}

void Lenia::UI::kernelWindow(const Animal& animal) {
    constexpr ImGuiWindowFlags window_flags = ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoDecoration;
    ImGui::SetNextWindowPos(ImVec2(5, 700), ImGuiCond_Always);
    ImGui::SetNextWindowSize(ImVec2(300, 300));
    ImGui::Begin("Kernel", nullptr, window_flags);
    ImGui::Text("Kernel");
    ImGui::Image((ImTextureID)(intptr_t)animal.m_kernelTexture, ImVec2(300, 300));
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