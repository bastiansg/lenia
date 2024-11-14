#include "lenia/ui.hpp"

void Lenia::Core::showInfoText(const Lenia::Simulation& sim, const Lenia::Animal& animal) {
    ImGui::SetNextWindowPos(ImVec2(5, 5), ImGuiCond_Always);
    constexpr ImGuiWindowFlags window_flags = ImGuiWindowFlags_NoDecoration | 
                                    ImGuiWindowFlags_NoMove |
                                    ImGuiWindowFlags_NoBackground | 
                                    ImGuiWindowFlags_NoSavedSettings |
                                    ImGuiWindowFlags_AlwaysAutoResize;
    ImGui::Begin("TopLeftText", nullptr, window_flags);
    ImGui::SetWindowFontScale(1.75f);
    char buffer[1024];
    sprintf_s(buffer, 1024, "size: [%llu, %llu]\ncurrent animal: %s\nbounding boxes: %llu\narea computed: %.2f\nmass: %4.2f\ndelta: %+08.2f (%+.4f%%)\ntime bounding boxes: %4.2f ms", 
        sim.m_w,
        sim.m_h,
        std::string(animal.m_taxonomy).c_str(),
        sim.getNBoundingBoxes(),
        sim.calcAreaComputed(),
        sim.m_mass,
        sim.m_massDelta,
        sim.m_massDelta / sim.m_mass,
        sim.m_updateTimeBoxes.count() / 1000.f);
    ImGui::Text(buffer);
    ImGui::End();
}