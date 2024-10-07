#pragma once
#include <string>
#include <iostream>
#include <fstream>
#include <memory>
#include <glad/glad.h>
#include <GLFW/glfw3.h>

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef int8_t i8;
typedef int16_t i16;
typedef int32_t i32;
typedef uint64_t u64;
typedef float f32;
typedef double f64;
namespace Lenia {

    inline std::string LoadShaderFile(const std::string& name) {
        std::ifstream file(name);
        std::string shader_code;
        if (file.is_open()) {
            std::string line;
            while (getline(file, line)) {
                shader_code += line + "\n";
            }
            file.close();
        }
        else {
            std::cerr << "Failed to open shader file: " << name << std::endl;
            exit(-1);
        }
        return shader_code;
    }

    
    inline GLFWwindow* InitGLFWWindow(const u32 W, const u32 H) {
        GLFWwindow* window;
        if (!glfwInit()) {
            std::cout << "Failed to initialize GLFW" << std::endl;
            exit(-1);
        }
        window = glfwCreateWindow(W, H, "", NULL, NULL);
        if (!window)
        {
            glfwTerminate();
            exit(-1);
        }
        glfwMakeContextCurrent(window);
        gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);
        return window;
    }

    inline void CheckShaderCompilation(GLuint shader) {
        GLint success;
        glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
        if (!success) {
            char infoLog[512];
            glGetShaderInfoLog(shader, 512, NULL, infoLog);
            std::cerr << "ERROR: Shader Compilation Failed\n" << infoLog << std::endl;
        }
    }

    // Function to check and print program linking errors
    inline void CheckProgramLinking(GLuint program) {
        GLint success;
        glGetProgramiv(program, GL_LINK_STATUS, &success);
        if (!success) {
            char infoLog[512];
            glGetProgramInfoLog(program, 512, NULL, infoLog);
            std::cerr << "ERROR: Program Linking Failed\n%s\n" << infoLog << std::endl;
        }
    }

    inline void SetupGL(GLuint* shader_program, GLuint* compute_program, GLuint* VAO, GLuint* VBO) {

        std::string compute_shader_code = Lenia::LoadShaderFile("lenia.comp");
        std::string frag_shader_code = Lenia::LoadShaderFile("lenia.frag");
        std::string vertex_shader_code = Lenia::LoadShaderFile("lenia.vert");
		const char* compute_shader_code_c = compute_shader_code.c_str();
		const char* frag_shader_code_c = frag_shader_code.c_str();
		const char* vertex_shader_code_c = vertex_shader_code.c_str();

        float vertices[] = {
            -1.0f, -1.0f, 0.0f,
            1.0f, -1.0f, 0.0f,
            1.0f, 1.0f, 0.0f,
            -1.0f, 1.0f, 0.0f
        };

        glGenVertexArrays(1, VAO);
        glGenBuffers(1, VBO);
        glfwSwapInterval(0);
        glBindVertexArray(*VAO);

        glBindBuffer(GL_ARRAY_BUFFER, *VBO);
        glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);

        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(float), (void*)0);
        glEnableVertexAttribArray(0);

        GLuint compute_shader = glCreateShader(GL_COMPUTE_SHADER);
        glShaderSource(compute_shader, 1, &compute_shader_code_c, NULL);
        glCompileShader(compute_shader);
        CheckShaderCompilation(compute_shader);

        GLuint fragment_shader = glCreateShader(GL_FRAGMENT_SHADER);
        glShaderSource(fragment_shader, 1, &frag_shader_code_c, NULL);
        glCompileShader(fragment_shader);
        CheckShaderCompilation(fragment_shader);

        GLuint vertex_shader = glCreateShader(GL_VERTEX_SHADER);
        glShaderSource(vertex_shader, 1, &vertex_shader_code_c, NULL);
        glCompileShader(vertex_shader);
        CheckShaderCompilation(vertex_shader);

        glAttachShader(*compute_program, compute_shader);
		glLinkProgram(*compute_program);
        glAttachShader(*shader_program, fragment_shader);
        glAttachShader(*shader_program, vertex_shader);
        glLinkProgram(*shader_program);

        glDeleteShader(compute_shader);
        glDeleteShader(fragment_shader);
        glDeleteShader(vertex_shader);
    }

	template<typename T>
    inline void InitBuffer(GLuint* buffer, T data[], size_t size, u8 binding) {
        glGenBuffers(1, buffer);
        glBindBuffer(GL_SHADER_STORAGE_BUFFER, *buffer);
        glBufferData(GL_SHADER_STORAGE_BUFFER, size * sizeof(T), data, GL_DYNAMIC_COPY);
        glBindBufferBase(GL_SHADER_STORAGE_BUFFER, binding, *buffer);
    }
}