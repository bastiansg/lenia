#include "lenia/ui.hpp"
#include <algorithm>


void Lenia::UI::statsText(f64 updatetime, const Simulation& sim, const Animal& animal, const u16 currentAnimalIdx, const u16 maxAnimals) {
    char buffer[1024];
    ImGui::SetNextWindowPos(ImVec2(5, 5), ImGuiCond_Always);
    constexpr ImGuiWindowFlags window_flags = ImGuiWindowFlags_NoDecoration | 
                                    ImGuiWindowFlags_NoMove |
                                    ImGuiWindowFlags_NoBackground | 
                                    ImGuiWindowFlags_NoSavedSettings |
                                    ImGuiWindowFlags_AlwaysAutoResize;
    ImGui::Begin("TopLeftText", nullptr, window_flags);
    ImGui::SetWindowFontScale(0.4);
    sprintf_s(buffer, 1024, "time: %.2fms (%.0f fps)\n"
    "size: [%llu, %llu], scale: %u\n"
    "current animal %u/%u (at 0x%p): %s\n"
    "bounding boxes: %llu in %4.2f ms (%u threads)\n"
    "area computed: %.2f\n"
    "mass: %4.2f\n"
    "delta: %+08.2f (%+.4f%%)\n",
        updatetime * 1000.f, 1.f / updatetime,
        sim.m_w, sim.m_h, sim.m_scale,
        currentAnimalIdx, maxAnimals, &animal, animal.m_info.m_taxonomy.to_string().c_str(),
        sim.getNBoundingBoxes(), sim.m_updateTimeBoxes.count() / 1000.f, Simulation::getNChunks(),
        sim.calcAreaComputed(),
        sim.m_mass,
        sim.m_massDelta, sim.m_massDelta / sim.m_mass);
    ImGui::Text("%s", buffer);
    ImGui::End();
    kernelWindow(animal);
}

void Lenia::UI::kernelWindow(const Animal& animal) {
    constexpr ImGuiWindowFlags window_flags = ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoDecoration;
    ImGui::SetNextWindowPos(ImVec2(5, 800), ImGuiCond_Always);
    ImGui::SetNextWindowSize(ImVec2(225, 225));
    ImGui::Begin("Kernel", nullptr, window_flags);
    ImGui::SetWindowFontScale(0.5);
    ImGui::Text("Kernel");
    ImGui::Image((ImTextureID)(intptr_t)animal.m_kernelTexture, ImVec2(200, 200));
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