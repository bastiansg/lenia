#pragma once

#include <glad/glad.h>
#include <GLFW/glfw3.h>
#include "imgui/imgui.h"
#include "imgui/imgui_impl_glfw.h"
#include "imgui/imgui_impl_opengl3.h"

#include <string>
#include <vector>

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

    namespace Core 
    {
        std::string loadShaderFile(const std::string& name);

        GLFWwindow* initGLFWWindow(const u32 W, const u32 H);

        void checkShaderCompilation(GLuint shader);

        void checkProgramLinking(GLuint program);

        GLuint createShader(const GLenum shaderType, const char* shaderCode);

        void setupGL(GLuint* shader_program, GLuint* compute_program, GLuint* VAO, GLuint* VBO);

        void terminateGL(GLuint &VAO, GLuint shader_program, GLuint compute_program, GLuint &VBO, GLFWwindow *window);


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

            Buffer() noexcept;

            Buffer(const BufferBinding binding) noexcept;

            Buffer(const BufferBinding binding, const size_t size) noexcept;

            Buffer(const BufferBinding binding, const std::vector<T>& data) noexcept;

            T& operator[](size_t i);

            void loadDataFromShader() noexcept;

            void storeDataInShader() const noexcept;
        };

        struct alignas(VECTOR4_ALIGNMENT) BoundingBox {
            i32 m_x0;
            i32 m_y0;
            i32 m_x1;
            i32 m_y1;

            BoundingBox() noexcept;
            BoundingBox(i32 l, i32 t, i32 r, i32 b) noexcept;

            b8 is_empty() const noexcept;

            b8 contains(const i32 x, const i32 y, const i32 w, const i32 h) const noexcept;

            b8 on_border(const i32 x, const i32 y, const i32 w, const i32 h) const noexcept;

            void expand(const u32 x, const u32 y, const u32 padding) noexcept;

            b8 operator()(const i32 x, const i32 y, const i32 w, const i32 h) const noexcept;
            b8 operator==(const BoundingBox& other) const noexcept;
            b8 operator!=(const BoundingBox& other) const noexcept;

            std::string to_string() const noexcept;
        };

        template <typename T>
        struct Vec2 {
            T m_x;
            T m_y;

            b8 operator==(const Vec2<T>& other) const noexcept;
            b8 operator!=(const Vec2<T>& other) const noexcept;
        };

        template <typename T>
        struct Vec3 {
            T m_x;
            T m_y;
            T m_z;

            b8 operator==(const Vec3<T>& other) const noexcept;
            b8 operator!=(const Vec3<T>& other) const noexcept;
        };

        struct ShaderData {
            u32 sum;
            u32 centerOfMassX;
            u32 centerOfMassY;
        };

        struct alignas(VECTOR4_ALIGNMENT) Color {
			f32 R;
			f32 G;
			f32 B;
		};

		struct ColorPalette {
			u32 n;
			Color colors[MAX_COLORS];
		};
    }
}

template <class T>
Lenia::Core::Buffer<T>::Buffer() noexcept {};

template <class T>
Lenia::Core::Buffer<T>::Buffer(const BufferBinding binding) noexcept {
    glGenBuffers(1, &m_ID);
    m_binding = binding;
    m_data = std::vector<T>();
    glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
}

template <class T>
Lenia::Core::Buffer<T>::Buffer(const BufferBinding binding, const size_t size) noexcept
: Lenia::Core::Buffer<T>::Buffer(binding)  {
    m_data.resize(size);
}

template <class T>
Lenia::Core::Buffer<T>::Buffer(const BufferBinding binding, const std::vector<T>& data) noexcept {
    m_binding = binding;
    m_data = data;
    glGenBuffers(1, &m_ID);
    glBindBufferBase(GL_SHADER_STORAGE_BUFFER, (u8)m_binding, m_ID);
    glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
}

template <class T>
T& Lenia::Core::Buffer<T>::operator[](size_t i) {
    return m_data[i];
}

template <class T>
void Lenia::Core::Buffer<T>::loadDataFromShader() noexcept {
    glGetNamedBufferSubData(m_ID, 0, m_data.size() * sizeof(T), &m_data[0]);
}

template <class T>
void Lenia::Core::Buffer<T>::storeDataInShader() const noexcept {
    glNamedBufferData(m_ID, m_data.size() * sizeof(T), &m_data[0], GL_DYNAMIC_COPY);
}