//#include "rules.h"
#include "math.h"
#include "Simulation.hpp"
#include <map>
#include <fstream>
#include <vector>
#include <sstream>
#include <iostream>
#include <memory>
#include <format>

namespace Lenia {

    static constexpr const u8 SCALE = 2;

    static std::map<std::string, Lenia::Animal> Animals = {};

    static void LoadAnimalsFromCSV() {
        std::ifstream file("animals.csv");
        std::string line;
        while (std::getline(file, line)) {
            std::vector<std::string> tokens;
            std::stringstream ss(line);
            std::string token;

            while (std::getline(ss, token, ','))
                tokens.push_back(token);

            const u32 R = (u32)std::stoul(tokens[5]) * SCALE;
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
            Animals.emplace(tokens[4], Lenia::Animal(tax, R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]));
        }
    }

	static void WriteAnimalStringToFile(Animal& animal) {
		std::string out = animal.ToString();
		std::ofstream file("animal_cpp.txt");
		file << out;
		file.close();
	}

	static Animal UseAnimal(std::string name) {
		Animal animal = Animals[name];
        animal.Bind();
        return animal;
	}
}

int main(void)
{
    u32 Size = 1024;
    
    GLFWwindow* window = Lenia::InitGLFWWindow(Size, Size);

    GLuint shader_program = glCreateProgram();
    GLuint compute_program = glCreateProgram();
    GLuint VAO, VBO;
    Lenia::SetupGL(&shader_program, &compute_program, &VAO, &VBO);

    GLubyte indices[] = {
        0, 1, 2,
        0, 2, 3
    };
    
    Lenia::LoadAnimalsFromCSV();

	Lenia::Animal current_animal = Lenia::UseAnimal("Eicosapteryx cavus pedes");
    Lenia::Simulation sim = Lenia::Simulation(Size, Size, Lenia::SCALE);
    sim.PlaceAnimal(current_animal, Size / 4, Size / 4);

    std::string window_title;
    f64 start_time = 0, render_time = 0;

    f64 average_render_time = 0.;
    u32 frame_count = 0;
    bool paused = false;

    u8 limit = 0;
	GLuint numGroupsX = (sim.w + 31) / 32;
    GLuint numGroupsY = (sim.h + 31) / 32;
    GLenum error;
    
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
            glUniform1ui(0, sim.w);
            glUniform1ui(1, sim.h);
            glUniform1ui(2, current_animal.r);
            glUniform1f(3, current_animal.dt);
            glUniform1f(4, current_animal.mu);
            glUniform1f(5, current_animal.sigma);
            glUniform1f(6, current_animal.dx2);
            glUniform1ui(7, (GLuint)current_animal.gn);
			glUniform2ui(8, sim.boundingBox.topLeft.first, sim.boundingBox.topLeft.second);
            glUniform2ui(9, sim.boundingBox.bottomRight.first, sim.boundingBox.bottomRight.second);
            glUseProgram(shader_program);
            glUniform1ui(0, sim.w);
            glUniform1ui(1, sim.h);
            glUniform2ui(2, sim.centerOfMass.first, sim.centerOfMass.second);
            glUniform2ui(3, sim.boundingBox.topLeft.first, sim.boundingBox.topLeft.second);
            glUniform2ui(4, sim.boundingBox.bottomRight.first, sim.boundingBox.bottomRight.second);
            glBindVertexArray(VAO);
            glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_BYTE, indices);
            glfwSwapBuffers(window);
            sim.Update();
        }
        
        glfwPollEvents();
        average_render_time += (render_time - average_render_time) / (++frame_count);
		window_title = std::format("Render Time: {:.4f}, FPS: {:.1f}, Average: {:.4f}, Field Sum: {:.4f}, Frame Count: {}", 
            render_time, 1.0 / render_time, average_render_time, sim.mass, frame_count);
        render_time = glfwGetTime() - start_time;
        // surf_calced 
        glfwSetWindowTitle(window, window_title.c_str());
    }
    glDeleteVertexArrays(1, &VAO);
    glDeleteProgram(shader_program);
	glDeleteProgram(compute_program);
    glDeleteBuffers(1, &VBO);
    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
