#pragma once

#include <glad.h>
#include "GLFW/glfw3.h"
#include "imgui.h"
#include "backends/imgui_impl_glfw.h"
#include "cufft.h"
#include "backends/imgui_impl_opengl3.h"
#include "cufft.h"

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
typedef cufftComplex c64;

namespace Lenia {

    std::string loadShaderFile(const std::string& name);

    void checkShaderCompilation(GLuint shader);

    void checkProgramLinking(GLuint program);

    GLuint createShader(const GLenum shaderType, const char* shaderCode);

    void createTexture(GLuint *texture, const f32* data, const std::size_t width, const std::size_t height, const GLint swizzle_mask[4]) noexcept;

    void createTexture(GLuint *texture, const std::size_t width, const std::size_t height) noexcept;


    void dumpArrayToFile(const std::vector<f32> &buffer, i32 w, i32 h, const std::string &name = "out.txt");

    enum class BufferBinding {
        WRITE,
        READ,
        KERNEL,
        DATA,
        COLOR,
        BOUNDING_BOXES,
        NONE
    };

    struct ShaderData {
        i32 sum = 0;
        i32 centerOfMassX = 0;
        i32 centerOfMassY = 0;
    
        inline b8 empty() {
            return !sum && !centerOfMassX && !centerOfMassY;
        }
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