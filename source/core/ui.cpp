#include "lenia/ui.hpp"

void Lenia::Core::showInfoText(const Lenia::Simulation& sim, const Lenia::Animal& animal) {
    ImGui::SetNextWindowPos(ImVec2(10, 10), ImGuiCond_Always);
    ImGuiWindowFlags window_flags = ImGuiWindowFlags_NoDecoration | 
                                    ImGuiWindowFlags_NoMove |
                                    ImGuiWindowFlags_NoBackground | 
                                    ImGuiWindowFlags_NoSavedSettings |
                                    ImGuiWindowFlags_AlwaysAutoResize;

    ImGui::Begin("TopLeftText", nullptr, window_flags);
    ImGui::SetWindowFontScale(1.8f);
    char buffer[1024];
    sprintf_s(buffer, 1024, "size: [%llu, %llu]\ncurrent animal: %s\n", sim.m_w, sim.m_w, std::string(animal.m_taxonomy).c_str());
    ImGui::Text(buffer);
    ImGui::End();
}