#include "ui.hpp"
#include <algorithm>


void Lenia::UI::statsText(f64 updatetime, const Simulation &sim, const Animal &animal, const u16 currentAnimalIdx, const u16 maxAnimals) {
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
    "size: [%llu, %llu], scale: %zu\n"
    "current animal %u/%u (@ 0x%p): %s\n"
    "bounding boxes: %02llu in %4.2f ms (%u threads)\n"
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
    ImGui::Text(buffer);
    ImGui::End();
    kernelWindow(animal);
}

void Lenia::UI::kernelWindow(const Animal& animal) {
    constexpr ImGuiWindowFlags window_flags = ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoInputs;
    ImGui::SetNextWindowPos(ImVec2(20, 700), ImGuiCond_Always);
    ImGui::SetNextWindowSize(ImVec2(512, 512));
    ImGui::Begin("Padded Kernel", nullptr, window_flags);
    ImGui::SetWindowFontScale(0.5);
    ImGui::Text("Padded Kernel");
    ImGui::Image((ImTextureID)(intptr_t)animal.m_paddedKernelTexture, ImVec2(256, 256));
    ImGui::End();
    ImGui::SetNextWindowPos(ImVec2(300, 700), ImGuiCond_Always);
    ImGui::SetNextWindowSize(ImVec2(512, 512));
    ImGui::Begin("FFT Kernel", nullptr, window_flags);
    ImGui::SetWindowFontScale(0.5);
    ImGui::Text("FFT Kernel");
    ImGui::Image((ImTextureID)(intptr_t)animal.m_fftKernelTexture, ImVec2(256, 256));
    ImGui::End();
}

void Lenia::UI::directionVector(const Simulation& sim) {
    ImDrawList* draw_list = ImGui::GetBackgroundDrawList();
    ImVec2 start = ImVec2(sim.m_centerOfMass[0], sim.m_centerOfMass[1]);
    ImVec2 dir = ImVec2(sim.m_direction[0], sim.m_direction[1]);
    draw_list->AddLine(start, ImVec2(start.x + dir.x * 20, start.y + dir.y * 20), IM_COL32(255, 0, 0, 255));
    draw_list->AddLine(start, ImVec2(start.x - dir.y * 20, start.y + dir.x * 20), IM_COL32(255, 0, 0, 255));
    draw_list->AddLine(start, ImVec2(start.x + dir.y * 20, start.y - dir.x * 20), IM_COL32(255, 0, 0, 255));
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

void Lenia::UI::pausedText() noexcept {
    ImGui::SetNextWindowPos(ImVec2(900, 5), ImGuiCond_Always);
    constexpr ImGuiWindowFlags window_flags = ImGuiWindowFlags_NoDecoration | 
                                    ImGuiWindowFlags_NoMove |
                                    ImGuiWindowFlags_NoBackground | 
                                    ImGuiWindowFlags_NoSavedSettings |
                                    ImGuiWindowFlags_AlwaysAutoResize;
    ImGui::Begin("Pause", nullptr, window_flags);
    ImGui::SetWindowFontScale(.5f);
    ImGui::Text("[PAUSED]");
    ImGui::End();
}

const Lenia::AnimalInfo& Lenia::UI::searchAnimal(const std::vector<AnimalInfo>& animals) noexcept {
    char inputText[256] = {};
    ImGui::Begin("Search Animal by Name");
    ImGui::InputText("Input Text", inputText, sizeof(inputText));
    ImGui::End();
    return animals[0];
}

std::string Lenia::UI::tolower(const std::string& str) noexcept {
    std::string lower = str;
    for (char& c : lower) {
        c = std::tolower(c);
    }
    return lower;
}

i32 Lenia::UI::lev(const std::string& a, const std::string& b) noexcept {
    i32 cost, x, y, z, m = a.size(), n = b.size();

    //TODO: benchmark this vs. vector vs unique vs std::array
    i32* d = new i32[n * m];

    for (i32 col = 1; col < m; ++col) {
        d[col] = col;
    }

    for (i32 row = 1; row < n; ++row) {
        d[row * m] = row;
    }

    for (i32 row = 1; row < n; ++row)
    for (i32 col = 1; col < m; ++col) {
        if (a.at(col) == b.at(row))
            cost = 0;
        else 
            cost = 1;
        x = d[(row - 1) * m + col] + 1;
        y = d[row * m + col - 1] + 1;
        z = d[(row - 1) * m + col - 1] + cost;
        d[row * m + col] = std::min(std::min(x, y), z);
    }
    i32 res = d[m * n - 1];
    delete[] d;
    return res;
}

std::string Lenia::UI::fuzzysearch(const std::string& name, const std::vector<AnimalInfo>& animals) noexcept {
    std::string lower_animal, lower_name = tolower(name);
    std::pair<i32, std::string> best_match = {0xFFFF, ""};
    for (const auto& animal : animals) {
        lower_animal = tolower(animal.m_taxonomy.species);
        i32 score = lev(lower_name, lower_animal);
        if (score == 0)
            return animal.m_taxonomy.species;
        if (score < best_match.first) 
            best_match = {score, animal.m_taxonomy.species};
    }
    return best_match.second;
}