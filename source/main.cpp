//#include "rules.h"
#include "math.h"
#include "simulation.hpp"
#include <map>
#include <fstream>
#include <vector>
#include <sstream>
#include <iostream>
#include <memory>
#include <format>

namespace Lenia {

    static std::map<std::string, Lenia::Animal*> Animals;

    static void LoadAnimalsFromCSV(const u32 scale) {
        std::ifstream file("resources/animals.csv");
        if (!file.is_open()) {
            std::cerr << "file resources/animals.csv couldn't be opened" << std::endl;
            exit(-1);
        }
        std::string line;
        while (std::getline(file, line)) {
            std::vector<std::string> tokens;
            std::stringstream ss(line);
            std::string token;

            while (std::getline(ss, token, ','))
                tokens.push_back(token);

            const u32 R = (u32)std::stoul(tokens[5]) * scale;
            const f32 dt = 1.f / std::stof(tokens[6]);
            std::stringstream beta_stream(tokens[7]);
            std::vector<f32> vBeta;
            while (std::getline(beta_stream, token, ';'))
                vBeta.push_back(std::stof(token));
            f32* beta = new f32[vBeta.size()];
            std::copy(vBeta.begin(), vBeta.end(), beta);
            const u8 B = static_cast<u8>(vBeta.size());
            const f32 mu = std::stof(tokens[8]);
            const f32 sigma = std::stof(tokens[9]);
            const KernelCore kn = static_cast<KernelCore>(std::stoi(tokens[10]) - 1);
            const GrowthFunction gn = static_cast<GrowthFunction>(std::stoi(tokens[11]) - 1);
            const Taxonomy tax = {tokens[4], tokens[0], tokens[1], tokens[2], tokens[3]};
            Animal* animal = new Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]);
            Animals.emplace(tokens[4], animal);
        }
    }

	static Animal* UseAnimal(const std::string& name) {
		Animal* animal = Animals[name];
        animal->Bind();
        return animal;
	}
}

int main(void)
{
    u32 Size = 1024;
    u32 scale = 6;

    GLFWwindow* window = Lenia::InitGLFWWindow(Size, Size);
    GLuint shader_program = glCreateProgram();
    GLuint compute_program = glCreateProgram();
    GLuint VAO, VBO;
    Lenia::SetupGL(&shader_program, &compute_program, &VAO, &VBO);

    GLubyte indices[] = {
        0, 1, 2,
        0, 2, 3
    };
    
    Lenia::LoadAnimalsFromCSV(scale);

	Lenia::Animal* current_animal = Lenia::UseAnimal("Orbium unicaudatus");
    Lenia::Simulation sim = Lenia::Simulation(Size, Size, scale);
    sim.PlaceAnimal(current_animal, 0, 0);

    std::string window_title;
    f64 start_time = 0, render_time = 0;

    f64 average_render_time = 0.;
    u32 frame_count = 0;
    bool paused = false;

	//const char* text = "Hello World";

    u8 limit = 0;
	GLuint numGroupsX = (sim.m_w + 31) / 32;
    GLuint numGroupsY = (sim.m_h + 31) / 32;

    while (!glfwWindowShouldClose(window)) [[likely]]
    {
        start_time = glfwGetTime();
        if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
            glfwSetWindowShouldClose(window, 1);
        }
        if (glfwGetKey(window, GLFW_KEY_P) == GLFW_PRESS) {
            paused = !paused;
			std::cout << "Paused: " << paused << std::endl;
        }
        if (glfwGetKey(window, GLFW_KEY_UP) == GLFW_PRESS) {
            limit++;
        }
        if (glfwGetKey(window, GLFW_KEY_DOWN) == GLFW_PRESS) {
            limit--;
        }
        if (!paused) {
            glClear(GL_COLOR_BUFFER_BIT);
            glUseProgram(compute_program);
            glDispatchCompute(numGroupsX, numGroupsY, 1);
            glMemoryBarrier(GL_SHADER_STORAGE_BARRIER_BIT);
            glUniform1ui(0, sim.m_w);
            glUniform1ui(1, sim.m_h);
            glUniform1ui(2, current_animal->m_r);
            glUniform1f(3, current_animal->m_dt);
            glUniform1f(4, current_animal->m_mu);
            glUniform1f(5, current_animal->m_sigma);
            glUniform1f(6, current_animal->m_dx2);
            glUniform1ui(7, (GLuint)current_animal->m_gn);
            glUseProgram(shader_program);
            glUniform1ui(0, sim.m_w);
            glUniform1ui(1, sim.m_h);
            glUniform2ui(2, sim.m_centerOfMass.x, sim.m_centerOfMass.y);
            glBindVertexArray(VAO);
            glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_BYTE, indices);
            glfwSwapBuffers(window);
            sim.Update();
        }
        
        glfwPollEvents();
        average_render_time += (render_time - average_render_time) / (++frame_count);
		window_title = std::format("Render Time: {:.4f}, FPS: {:.1f}, Average: {:.4f}, Field Sum: {:.4f}, Frame Count: {}", 
            render_time, 1.0 / render_time, average_render_time, sim.m_mass, frame_count);
        render_time = glfwGetTime() - start_time;
        glfwSetWindowTitle(window, window_title.c_str());
    }
    glDeleteVertexArrays(1, &VAO);
    glDeleteProgram(shader_program);
	glDeleteProgram(compute_program);
    glDeleteBuffers(1, &VBO);
    glfwDestroyWindow(window);
    glfwTerminate();
    for (auto const& [name, animal] : Lenia::Animals) {
        delete animal;
    }
    return 0;
}
