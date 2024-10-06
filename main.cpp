//#include "rules.h"
#include "math.h"
#include "Field.h"
#include <map>
#include <fstream>
#include <vector>
#include <sstream>
#include <cstdio>
#include <iostream>
#include <memory>
#include <stdexcept>
#include <array>
#include <cassert>

namespace Lenia {

    const u32 W = 1500;
    const u32 H = 1500;

    static std::map<std::string, Lenia::Animal> Animals = {};

    static void InitAnimals() {
        std::ifstream file("animals.csv");
        std::string line;
        while (std::getline(file, line)) {
            std::vector<std::string> tokens;
            std::stringstream ss(line);
            std::string token;

            while (std::getline(ss, token, ','))
                tokens.push_back(token);

            const u32 R = (u32)std::stoul(tokens[5]);
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
            Animals.emplace(tokens[4], Lenia::Animal(tokens[4], tokens[0], tokens[1], tokens[2], tokens[3], R, dt, const_cast<const f32*>(beta), B, mu, sigma, kn, gn, tokens[12]));
        }
    }

	static void WriteAnimalStringToFile(Animal& animal) {
		std::string out = animal.ToString();
		std::ofstream file("animal_cpp.txt");
		file << out;
		file.close();
	}
}

int main(void)
{
    GLFWwindow* window = Lenia::InitGLFWWindow(1000, 1000);
    std::string frag_shader_code = Lenia::LoadShaderFile("lenia.frag");
    std::string vertex_shader_code = Lenia::LoadShaderFile("shader.vert");

    GLuint program = glCreateProgram();
    GLuint VAO, VBO;
    Lenia::SetupGL(&program, &VAO, &VBO, frag_shader_code.c_str(), vertex_shader_code.c_str());

    GLubyte indices[] = {
        0, 1, 2,
        0, 2, 3
    };
    
    Lenia::InitAnimals();
    Lenia::Animal current_animal = Lenia::Animals["Orbium virtualis"];
	Lenia::WriteAnimalStringToFile(current_animal);
    //exit(0);
    i32 res = 1;
    Lenia::Field field = Lenia::Field(1000, 1000, 3);

    int w = 0, h = 0;
    GLuint readBuffer, writeBuffer;
	
    field.PlaceAnimal(current_animal, 250, 250);
    Lenia::InitBuffer<f32>(&readBuffer, field.Cells.get(), field.Size, 1);
    Lenia::InitBuffer<f32>(&writeBuffer, nullptr, field.Size, 0);

    std::string window_title;
    f64 start_time = 0, render_time = 0;

    f64 average_render_time = 0.;
    u32 frame_count = 0;
    u8 binding = 1;
    bool paused = false;

    u8 limit = 0;
    f32* kernel = current_animal.ComputeKernel();
    GLuint kernelBuffer;
    Lenia::InitBuffer<f32>(&kernelBuffer, kernel, current_animal.R * current_animal.R, 2);

    f64 field_sum = 0.;
    while (!glfwWindowShouldClose(window)) [[likely]]
    {
        start_time = glfwGetTime();
        if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) [[unlikely]] {
            glfwSetWindowShouldClose(window, 1);
        }
        if (glfwGetKey(window, GLFW_KEY_P) == GLFW_PRESS) [[unlikely]] {
            paused = !paused;
        }
         if (glfwGetKey(window, GLFW_KEY_UP) == GLFW_PRESS) [[unlikely]] {
             limit++;
         }
         if (glfwGetKey(window, GLFW_KEY_DOWN) == GLFW_PRESS) [[unlikely]] {
             limit--;
         }
        
        if (limit > -1) [[unlikely]] {
            glfwSwapInterval(limit) ;
        }
        
        if (!paused) [[likely]] {
            glClear(GL_COLOR_BUFFER_BIT);
            glUseProgram(program);
            glBindBufferBase(GL_SHADER_STORAGE_BUFFER, binding = 1 - binding, writeBuffer);
            glBindBufferBase(GL_SHADER_STORAGE_BUFFER, binding, readBuffer);
            glBindVertexArray(VAO);
            glUniform1ui(0, (u32)field.W);
            glUniform1ui(1, (u32)field.H);
            glUniform1ui(2, current_animal.R);
			glUniform1f(3, current_animal.Dt);  
			glUniform1f(4, current_animal.Mu);
			glUniform1f(5, current_animal.Sigma);
            glUniform1f(6, current_animal.Dx2);
            glUniform1ui(7, (u32)(current_animal.Gn));
            glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_BYTE, indices);
			//field_sum = field.Sum();
            glfwSwapBuffers(window);
        }
        glfwPollEvents();
        render_time = glfwGetTime() - start_time;
        average_render_time += (render_time - average_render_time) / (++frame_count);
        window_title = "Render Time: " + std::to_string(render_time) + ", FPS: " + std::to_string(1.0 / render_time) + ", Average: " + std::to_string(average_render_time);
        glfwSetWindowTitle(window, window_title.c_str());
    }
    delete[] kernel;
    glDeleteVertexArrays(1, &VAO);
    glDeleteProgram(program);
    glDeleteBuffers(1, &readBuffer);
    glDeleteBuffers(1, &writeBuffer);
    glDeleteBuffers(2, &kernelBuffer);
    glDeleteBuffers(1, &VBO);
    glfwDestroyWindow(window);
    glfwTerminate();
    return 0;
}
