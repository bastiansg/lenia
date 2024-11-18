#include <iostream>

#include "lenia/engine.hpp"


int main(void) {
    

    auto engine = Lenia::Core::Engine();

    while (engine.shouldRun()) 
        engine.updateLenia();
    
    engine.terminateLenia();
    return 0;

    // auto animals = Lenia::Animal::loadAnimalsFromCSV(scale);
    // Lenia::Animal *current_animal = &animals.at("Tetradecahelicium");
    // auto animals_it = animals.find("Tetradecahelicium");
    // current_animal->bind();

    // Lenia::Simulation sim(1024, 1024, scale);
    // auto cells = current_animal->getCells();
    // sim.placeCells(cells, current_animal->m_w, current_animal->m_h, 0, 0);

    // bool paused = false, show_info = false;
    // const GLuint numGroupsX = (sim.m_w + 31) / 32;
    // const GLuint numGroupsY = (sim.m_h + 31) / 32;

    // while (!glfwWindowShouldClose(window)) [[likely]] {
    //     glfwPollEvents();
    //     ImGui_ImplOpenGL3_NewFrame();
    //     ImGui_ImplGlfw_NewFrame();
    //     ImGui::NewFrame();

    //     if (show_info) {
    //         Lenia::Core::showInfoText(sim, *current_animal);
    //     }
    //     glClear(GL_COLOR_BUFFER_BIT);
    //     if (!paused) [[likely]] {
    //         glUseProgram(compute_program);
    //         glDispatchCompute(numGroupsX, numGroupsY, 1);
    //         glMemoryBarrier(GL_SHADER_STORAGE_BARRIER_BIT);
    //         glUniform1ui(0, sim.m_w);
    //         glUniform1ui(1, sim.m_h);
    //         glUniform1ui(2, current_animal->m_r * current_animal->m_scale);
    //         glUniform1f(3, current_animal->m_dt);
    //         glUniform1f(4, current_animal->m_mu);
    //         glUniform1f(5, current_animal->m_sigma);
    //         glUniform1f(6, current_animal->m_dx2);
    //         glUniform1ui(7, (GLuint)current_animal->m_gn);
    //         glUseProgram(shader_program);
    //         glUniform1ui(0, sim.m_w);
    //         glUniform1ui(1, sim.m_h);
    //         glUniform2ui(2, sim.m_centerOfMass.m_x, sim.m_centerOfMass.m_y);
    //         glBindVertexArray(VAO);
    //         if (show_info) {
    //             sim.updateTimed();
    //         } else {
    //             sim.update();
    //         }
    //     }
    //     glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_BYTE, indices);
    //     ImGui::Render();
    //     ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
    //     glfwSwapBuffers(window);
    // }
    // Lenia::Core::terminateGL(VAO, shader_program, compute_program, VBO, window);
    // return 0;
}