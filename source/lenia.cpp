#include "lenia/simulation.hpp"
#include "lenia/animal.hpp"
#include "lenia/ui.hpp"
#include <iostream>

int main(void)
{
    u32 scale = 10;

    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;

    GLFWwindow* window = Lenia::Core::initGLFWWindow(1024, 1024);
    if (window == nullptr) {
        return -1;
    }
    
    GLuint shader_program = glCreateProgram();
    GLuint compute_program = glCreateProgram();
    GLuint VAO, VBO;
    Lenia::Core::setupGL(&shader_program, &compute_program, &VAO, &VBO);

    constexpr GLubyte indices[] = {
        0, 1, 2,
        0, 2, 3
    };
    
    auto animals = Lenia::Animal::loadAnimalsFromCSV(scale);
	Lenia::Animal* current_animal = &animals.at("Tetradecahelicium");
    auto animals_it = animals.find("Tetradecahelicium");
    current_animal->bind();

    Lenia::Simulation sim(1024, 1024, scale);
    auto cells = current_animal->getCells();
    sim.placeCells(cells, current_animal->m_w, current_animal->m_h, 0, 0);

    bool paused = false, show_info = false;
	const GLuint numGroupsX = (sim.m_w + 31) / 32;
    const GLuint numGroupsY = (sim.m_h + 31) / 32;

    while (!glfwWindowShouldClose(window)) [[likely]]
    {
        glfwPollEvents();
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplGlfw_NewFrame();
        ImGui::NewFrame();
        if (ImGui::IsKeyPressed(ImGuiKey_I)) {
            show_info = !show_info;
        }
        if (ImGui::IsKeyPressed(ImGuiKey_P)) {
            paused = !paused;
        }
        if (ImGui::IsKeyPressed(ImGuiKey_RightArrow)) {
            animals_it++;
            sim.clearCells();
            current_animal = &animals_it->second;
            current_animal->bind();
            cells = current_animal->getCells();
            sim.placeCells(cells, current_animal->m_w, current_animal->m_h, 512, 512);
        }
        if (ImGui::IsKeyPressed(ImGuiKey_LeftArrow)) {
            animals_it--;
            sim.clearCells();
            current_animal = &animals_it->second;
            current_animal->bind();
            cells = current_animal->getCells();
            sim.placeCells(cells, current_animal->m_w, current_animal->m_h, 512, 512);
        }
        if (ImGui::IsKeyPressed(ImGuiKey_DownArrow)) {
            scale--;
            sim.clearCells();
            current_animal->m_scale = scale;
            current_animal->bind();
            cells = current_animal->getCells();
            sim.m_scale = scale;
            sim.placeCells(cells, current_animal->m_w, current_animal->m_h, 512, 512);
        }
        if (ImGui::IsKeyPressed(ImGuiKey_UpArrow)) {
            scale++;
            sim.clearCells();
            current_animal->m_scale = scale;
            current_animal->bind();
            cells = current_animal->getCells();
            sim.m_scale = scale;
            sim.placeCells(cells, current_animal->m_w, current_animal->m_h, 512, 512);
        }
        if (show_info) {
            Lenia::Core::showInfoText(sim, *current_animal);
        }
        glClear(GL_COLOR_BUFFER_BIT);
        if (!paused) [[likely]] {
            glUseProgram(compute_program);
            glDispatchCompute(numGroupsX, numGroupsY, 1);
            glMemoryBarrier(GL_SHADER_STORAGE_BARRIER_BIT);
            glUniform1ui(0, sim.m_w);
            glUniform1ui(1, sim.m_h);
            glUniform1ui(2, current_animal->m_r * current_animal->m_scale);
            glUniform1f(3, current_animal->m_dt);
            glUniform1f(4, current_animal->m_mu);
            glUniform1f(5, current_animal->m_sigma);
            glUniform1f(6, current_animal->m_dx2);
            glUniform1ui(7, (GLuint)current_animal->m_gn);
            glUseProgram(shader_program);
            glUniform1ui(0, sim.m_w);
            glUniform1ui(1, sim.m_h);
            glUniform2ui(2, sim.m_centerOfMass.m_x, sim.m_centerOfMass.m_y);
            glBindVertexArray(VAO);
            if (show_info) {
                sim.updateTimed();
            }
            else {
                sim.update();
            }
        }
        glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_BYTE, indices);
        ImGui::Render();
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
        glfwSwapBuffers(window);
    }
    Lenia::Core::terminateGL(VAO, shader_program, compute_program, VBO, window);
    return 0;
}