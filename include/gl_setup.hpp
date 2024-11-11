#pragma once


#include <string>
#include <iostream>
#include <fstream>
#include <memory>
#include <vector>
#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include "imgui/imgui.h"
#include "imgui/imgui_impl_glfw.h"
#include "imgui/imgui_impl_opengl3.h"

#define VECTOR4_ALIGNMENT 16
#define MAX_COLORS 16

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef int8_t i8;
typedef int16_t i16;
typedef int32_t i32;
typedef uint64_t u64;
typedef float f32;
typedef double f64;
typedef bool b8;

namespace Lenia {

    enum class BufferBinding {
        WRITE,
        READ,
        KERNEL,
        DATA,
        COLOR,
        BOUNDING_BOXES,
        NONE
    };

    template <class T>
    struct Buffer {
        GLuint m_ID;
		BufferBinding m_binding;
        std::vector<T> m_data;

        Buffer() {};

        Buffer(const BufferBinding binding) {
			glGenBuffers(1, &m_ID);
			m_binding = binding;
            m_data = std::vector<T>();
            glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
        }

        Buffer(const BufferBinding binding, const size_t size) : Buffer<T>(binding) {
            m_data.resize(size);
        }

		Buffer(const BufferBinding binding, const std::vector<T>& data) {
            m_binding = binding;
            m_data = data;
            glGenBuffers(1, &m_ID);
            glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
            glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
        }

        T& operator[](size_t i)  {
            return m_data[i];
        }

        T& operator[](i32 i) {
            return m_data[i];
        }

		void getDataFromShader() {
			glGetNamedBufferSubData(m_ID, 0, m_data.size() * sizeof(T), &m_data[0]);
		}

        void updateData() {
            glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
        }
    };

    struct alignas(VECTOR4_ALIGNMENT) BoundingBox {
        i32 m_x0;
        i32 m_y0;
        i32 m_x1;
        i32 m_y1;

        BoundingBox() : m_x0(0), m_y0(0), m_x1(0), m_y1(0) {}

        BoundingBox(i32 l, i32 t, i32 r, i32 b) : m_x0(l), m_y0(t), m_x1(r), m_y1(b) {}

        b8 IsEmpty() const {
            return m_x0 == 0 && m_y0 == 0 && m_x1 == 0 && m_y1 == 0;
        }

        b8 contains(const i32 x, const i32 y, const i32 w, const i32 h) const {
            b8 left = m_x0 > 0 ? x <= m_x1 : (x <= m_x1 || x >= (m_x0 % w + w) % w);
            b8 right = m_x1 < w ? x >= m_x0 : (x >= m_x0 || x <= (m_x1 % w));
            b8 top = m_y0 > 0 ? y <= m_y1 : (y <= m_y1 || y >= (m_y0 % h + h) % h);
            b8 bottom = m_y1 < h ? y >= m_y0 : (y >= m_y0 || y <= (m_y1 % h));
            return left && right && top && bottom;
        }

        b8 operator()(const i32 x, const i32 y, const i32 w, const i32 h) {
            return contains(x, y, w, h);
        }

        b8 on_border(const u32 x, const u32 y, const u32 l) const {
            return x == (m_x0 % l) || x == (m_x1 % l) || y == (m_y0 % l) || y == (m_y1 % l);
        }

        void expand(const u32 x, const u32 y, const u32 padding) {
            m_x0 = std::min(static_cast<i32>(x - padding), m_x0);
            m_x1 = std::max(static_cast<i32>(x + padding), m_x1);
            m_y0 = std::min(static_cast<i32>(y - padding), m_y0);
            m_y1 = std::max(static_cast<i32>(y + padding), m_y1);
        }

        b8 operator==(const BoundingBox& other) const {
            return m_x0 == other.m_x0 && m_y0 == other.m_y0 && m_x1 == other.m_x1 && m_y1 == other.m_y1;
        }

        b8 operator!=(const BoundingBox& other) const {
            return !(*this == other);
        }

        std::string ToString() const {
            return "BoundingBox: x0=" + std::to_string(m_x0) + ", y0=" + std::to_string(m_y0) + ", x1=" + std::to_string(m_x1) + ", y1=" + std::to_string(m_y1);
        }
    };

    template <typename T>
    struct Vec2 {
        T x;
        T y;

        b8 operator==(const Vec2<T>& other) const {
            return x == other.x && y == other.y;
        }

        b8 operator!=(const Vec2<T>& other) const {
            return !(*this == other);
        }
    };

    template <typename T>
    struct Vec3 {
        T x;
        T y;
        T z;

        b8 operator==(const Vec3<T>& other) const {
            return x == other.x && y == other.y && z == other.z;
        }

        b8 operator!=(const Vec3<T>& other) const {
            return !(*this == other);
        }
    };

    template <typename T>
    struct Vec2Hash {
        std::size_t operator()(const Vec2<T>& v) const {
            std::size_t hx = std::hash<T>{}(v.x);
            std::size_t hy = std::hash<T>{}(v.y);
            return hx ^ (hy << 1);
        }
    };

    /// <summary>
    /// A struct that matches the data buffer in the compute shader one-to-one, to make reading and writing easier.
    /// </summary>
    struct ShaderData {
        u32 sum;
        u32 centerOfMassX;
        u32 centerOfMassY;
    };

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
        ImGui_ImplGlfw_InitForOpenGL(window, true); 
        ImGui_ImplOpenGL3_Init();
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

    inline GLuint CreateShader(const GLenum shaderType, const char* shaderCode) {
        GLuint shader = glCreateShader(shaderType);
        glShaderSource(shader, 1, &shaderCode, NULL);
        glCompileShader(shader);
        CheckShaderCompilation(shader);
		return shader;
    }

    inline void SetupGL(GLuint* shader_program, GLuint* compute_program, GLuint* VAO, GLuint* VBO) {
        std::string compute_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.comp");
        std::string frag_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.frag");
        std::string vertex_shader_code = Lenia::LoadShaderFile("C:/Users/damix/Documents/GitHub/Lenia/shaders/lenia.vert");

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

        glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(f32), (void*)0);
        glEnableVertexAttribArray(0);

        GLuint compute_shader = CreateShader(GL_COMPUTE_SHADER, compute_shader_code.c_str());
		GLuint fragment_shader = CreateShader(GL_FRAGMENT_SHADER, frag_shader_code.c_str());
		GLuint vertex_shader = CreateShader(GL_VERTEX_SHADER, vertex_shader_code.c_str());

        glAttachShader(*compute_program, compute_shader);
		glLinkProgram(*compute_program);
        glAttachShader(*shader_program, fragment_shader);
        glAttachShader(*shader_program, vertex_shader);
        glLinkProgram(*shader_program);

        glDeleteShader(compute_shader);
        glDeleteShader(fragment_shader);
        glDeleteShader(vertex_shader);
    }
}