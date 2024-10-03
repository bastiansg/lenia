//#include "rules.h"
#include "math.h"
#include "Field.h"
#include <map>
#include <fstream>
#include <vector>
#include <sstream>


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
}

int main(void)
{
    GLFWwindow* window = Lenia::InitGLFWWindow(1500, 1500);
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

    Lenia::Field field = Lenia::Field(500, 500);
    int w = 0, h = 0;
    GLuint readBuffer, writeBuffer;
	Lenia::Animal current_animal = Lenia::Animals["Circium lithos apertus"];
    field.PlaceAnimal(current_animal, 50, 50);
    Lenia::InitBuffer(&readBuffer, field.Cells.get(), field.W * field.H * sizeof(f32), 1);
    Lenia::InitBuffer(&writeBuffer, NULL, field.W * field.H * sizeof(f32), 0);

    std::string window_title;
    f64 start_time = 0, render_time = 0;

    f64 average_render_time = .0;
    u32 frame_count = 0;
    u8 binding = 0;
    bool paused = false;

    f32* kernel = current_animal.ComputeKernel();
    int limit = 10;
    GLuint kernelBuffer;
    Lenia::InitBuffer(&kernelBuffer, kernel, current_animal.R * current_animal.R * sizeof(f32), 2);


    while (!glfwWindowShouldClose(window))
    {
        start_time = glfwGetTime();
        if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
            glfwSetWindowShouldClose(window, 1);
        }
        if (glfwGetKey(window, GLFW_KEY_P) == GLFW_PRESS) {
            paused = !paused;
        }
         if (glfwGetKey(window, GLFW_KEY_UP) == GLFW_PRESS) {
             limit++;
         }
         if (glfwGetKey(window, GLFW_KEY_DOWN) == GLFW_PRESS) {
             limit--;
         }
        
        if (limit > -1) {
            glfwSwapInterval(limit);
        }
        
        if (!paused) {
            glClear(GL_COLOR_BUFFER_BIT);
            glUseProgram(program);
            glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - binding, writeBuffer);
            glBindBufferBase(GL_SHADER_STORAGE_BUFFER, binding, readBuffer);
            glBindVertexArray(VAO);
            glUniform1ui(0, field.W);
            glUniform1ui(1, field.H);
            glUniform1ui(2, current_animal.R);
			glUniform1f(3, current_animal.dt);  
			glUniform1f(4, current_animal.mu);
			glUniform1f(5, current_animal.sigma);
            glUniform1f(6, 1.f / (current_animal.R * current_animal.R));
			glUniform1i(7, static_cast<int>(current_animal.gn));
            glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_BYTE, indices);
            binding = 1 - binding;
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
