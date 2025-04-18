#pragma once

#include <glad.h>
#include "GLFW/glfw3.h"
#include "imgui.h"
#include "cufft.h"
#include "backends/imgui_impl_glfw.h"
#include "backends/imgui_impl_opengl3.h"

#include <string>
#include <vector>
#include <cmath>

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

    std::string loadShaderFile(const std::string& name);

    void checkShaderCompilation(GLuint shader);

    void checkProgramLinking(GLuint program);

    GLuint createShader(const GLenum shaderType, const char* shaderCode);

    void createTexture(GLuint *texture, const f32* data, const std::size_t width, const std::size_t height, const GLint swizzle_mask[4]) noexcept;

    void createTexture(GLuint *texture, const std::size_t width, const std::size_t height) noexcept;

    void dumpArrayToFile(const std::vector<f32> &buffer, i32 w, i32 h, const std::string &name = "out.txt");


    enum BufferBinding {
        WRITE,
        READ,
        KERNEL,
        DATA,
        COLOR,
        BOUNDING_BOXES,
        CENTER_OF_MASS,
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



    struct alignas(8) c64 : public cufftComplex {
        c64() = default;

        __device__ __host__ c64(f32 real, f32 imag) {
            x = real;
            y = imag;
        }

        __device__ __host__ c64& operator=(const c64 &rhs) {
            x = rhs.x;
            y = rhs.y;
            return *this;
        }

        __device__ c64 operator*(const c64 &rhs) const {
            return { x * rhs.x - y * rhs.y, x * rhs.y + y * rhs.x };
        }

        __device__ c64 operator+(const c64 &rhs) const {
            return { x + rhs.x, y + rhs.y };
        }

        __device__ c64 operator*(const f32 rhs) const {
            return { x * rhs, y * rhs };
        }

        __device__ f32 abs() const {
            return std::sqrt(x * x + y * y);
        }

        __device__ c64 clamp() const {
            return {x <= 0.f ? 0.f : (x >= 1.f ? 1.f : x), 0.f};
        }
    };
};