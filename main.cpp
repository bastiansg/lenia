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

            while (std::getline(ss, token, ',')) {
                tokens.push_back(token);
            }

			Animals.emplace(tokens[4], Lenia::Animal(tokens[0], tokens[1], tokens[2], tokens[3], tokens[4], tokens[12]));
        }
    }

    static u8 zero(const f32 x) {
        return (x > 1e-6 && x < -1e-6);
    }

    static f32 K_c(const f32 r) {
        f32 divisor = 4.0 * r - 4.0 * r * r;
        if (zero(divisor)) return 0.0;
        return exp(4.0 - (4.0 / divisor));
    }

    static f32 K_s(const f32 r, const f32* beta, const u8 B) {
        const f64 Br = B * r;
        const u32 floored = (u32)(floor(Br));
        if (floored >= B) return 0.0;
        const f64 Kc = K_c(fmod(Br, 1.0));
        return beta[floored] * Kc;
    }

    static f32 normalization(const u16 R, const f32* beta, const u8 B) {
        f32 normalization = 0;
        for (i16 i = -R; i <= R; i++) {
            for (i16 j = -R; j <= R; j++) {
                if (!i && !j) continue;
                f32 dist = sqrt(i * i + j * j);
                if (zero(dist) || dist > R) continue;
                dist /= (f32)R;
                normalization += K_s(dist, beta, B);
            }
        }
        return normalization / (R * R);
    }

    static f32* compute_kernel(const u16 R, const f32* beta, const u8 B) {
        f32* kernel_buffer = new f32[R * R + 2 * R + 1];
        f32 normalization_factor = normalization(R, beta, B);
        for (u16 i = 0; i <= R; i++)
            for (u16 j = 0; j <= R; j++) {
                kernel_buffer[i * R + j] = K_s(sqrt(i * i + j * j) / R, beta, B) / normalization_factor;
            }
        return kernel_buffer;
    }

    
}
int main() {
	Lenia::Field field = Lenia::Field(1000, 1000);
	
	std::cout << Lenia::Animals["Crucium solidus"].family << std::endl;
	return 0;
} 

/*
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

    Lenia::Field field = Lenia::Field(1000, 1000);
    Lenia::Animal Orbium = Lenia::Animal("Orbium", "Animalia", "Orbium", "Orbium", "Orbium");
    //Lenia::Animal::InitAnimals();
    const std::string str = "7.MD6.qL$6.pKqEqFURpApBRAqQ$5.VqTrSsBrOpXpWpTpWpUpCrQ$4.CQrQsTsWsApITNPpGqGvL$3.IpIpWrOsGsBqXpJ4.LsFrL$A.DpKpSpJpDqOqUqSqE5.ExD$qL.pBpTT2.qCrGrVrWqM5.sTpP$.pGpWpD3.qUsMtItQtJ6.tL$.uFqGH3.pXtOuR2vFsK5.sM$.tUqL4.GuNwAwVxBwNpC4.qXpA$2.uH5.vBxGyEyMyHtW4.qIpL$2.wV5.tIyG3yOxQqW2.FqHpJ$2.tUS4.rM2yOyJyOyHtVpPMpFqNV$2.HsR4.pUxAyOxLxDxEuVrMqBqGqKJ$3.sLpE3.pEuNxHwRwGvUuLsHrCqTpR$3.TrMS2.pFsLvDvPvEuPtNsGrGqIP$4.pRqRpNpFpTrNtGtVtStGsMrNqNpF$5.pMqKqLqRrIsCsLsIrTrFqJpHE$6.RpSqJqPqVqWqRqKpRXE$8.OpBpIpJpFTK!";
    //auto& orbium = Lenia::Animals["Orbium"];
    int w = 0, h = 0;
    Orbium.SetCellsFromRLE(str);
    GLuint readBuffer, writeBuffer;
    field.PlaceAnimal(Orbium, 10, 10);
    Lenia::InitBuffer(&readBuffer, field.Cells.get(), field.W * field.H * sizeof(f32), 1);
    Lenia::InitBuffer(&writeBuffer, NULL, field.W * field.H * sizeof(f32), 0);

    std::string window_title;
    f64 start_time = 0, render_time = 0;

    float average_render_time = 0;
    u32 frame_count = 0;
    u8 binding = 0;
    bool paused = false;

    const f32 R = 13;
    const f32 beta[] = { 1.f };
    const u32 B = (u32)(sizeof(beta) / sizeof(f32));
    const f32 dt = 0.10f;

    f32* kernel = Lenia::compute_kernel((u8)R, beta, B);
    int limit = 0;
    GLuint kernelBuffer;
    Lenia::InitBuffer(&kernelBuffer, kernel, R * R * sizeof(32), 2);


    while (!glfwWindowShouldClose(window))
    {
        start_time = glfwGetTime();
        if (glfwGetKey(window, GLFW_KEY_ESCAPE) == GLFW_PRESS) {
            glfwSetWindowShouldClose(window, 1);
        }
        if (glfwGetKey(window, GLFW_KEY_P) == GLFW_PRESS) {
            paused = !paused;
        }
        /*if (glfwGetKey(window, GLFW_KEY_R) == GLFW_PRESS) {
            free(start_buffer);
            start_buffer = create_field();
            glBindBuffer(GL_SHADER_STORAGE_BUFFER, readBuffer);
            glBufferData(GL_SHADER_STORAGE_BUFFER, W * H * sizeof(u32), start_buffer, GL_DYNAMIC_COPY);
            glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1, readBuffer);
        }
        // if (glfwGetKey(window, GLFW_KEY_N) == GLFW_PRESS) {
        //     rule.born = rand();
        //     rule.survive = rand();
        // }
        // if (glfwGetKey(window, GLFW_KEY_UP) == GLFW_PRESS) {
        //     limit++;
        // }
        // if (glfwGetKey(window, GLFW_KEY_DOWN) == GLFW_PRESS) {
        //     limit--;
        // }
        if (limit > -1) {
            glfwSwapInterval(limit);
        }
        
        if (!paused) {
            glClear(GL_COLOR_BUFFER_BIT);
            glUseProgram(program);
            glBindBufferBase(GL_SHADER_STORAGE_BUFFER, 1 - binding, writeBuffer);
            glBindBufferBase(GL_SHADER_STORAGE_BUFFER, binding, readBuffer);
            glBindVertexArray(VAO);
            glUniform1ui(glGetUniformLocation(program, "W"), field.W);
            glUniform1ui(glGetUniformLocation(program, "H"), field.H);
            glUniform1ui(glGetUniformLocation(program, "R"), R);
            glUniform1f(glGetUniformLocation(program, "dt"), dt);
            glUniform1f(glGetUniformLocation(program, "dx2"), 1.f / (R * R));
            glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_BYTE, indices);
            binding = 1 - binding;
            render_time = glfwGetTime() - start_time;
            glfwSwapBuffers(window);
        }
        glfwPollEvents();
        average_render_time += (render_time - average_render_time) / (++frame_count);
        window_title = "Render Time: " + std::to_string(render_time) + ", FPS: " + std::to_string(1.0 / render_time) + ", Average: " + std::to_string(average_render_time);
        glfwSetWindowTitle(window, window_title.c_str());
    }

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
*/