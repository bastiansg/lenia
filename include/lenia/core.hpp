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

namespace Lenia::Core {

    std::string loadShaderFile(const std::string& name);

    void checkShaderCompilation(GLuint shader);

    void checkProgramLinking(GLuint program);

    GLuint createShader(const GLenum shaderType, const char* shaderCode);

    enum class BufferBinding {
        WRITE,
        READ,
        KERNEL,
        DATA,
        COLOR,
        BOUNDING_BOXES,
        NONE
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
        void resize(const u32 size);
        // f32 overlap(const BoundingBox& other) const noexcept;
        // void fuse(const BoundingBox& other) noexcept;
        b8 operator==(const BoundingBox& other) const noexcept;
        b8 operator!=(const BoundingBox& other) const noexcept;
        std::string to_string() const noexcept;
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
};