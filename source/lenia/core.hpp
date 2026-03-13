#pragma once

#include <glad.h>
#include "GLFW/glfw3.h"
#include "imgui.h"
#include "cufft.h"
#include "backends/imgui_impl_glfw.h"
#include "backends/imgui_impl_opengl3.h"

#include <string>
#include <array>
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

namespace Lenia
{

    std::string loadShaderFile(const std::string &name);

    void checkShaderCompilation(GLuint shader);

    void checkProgramLinking(GLuint program);

    GLuint createShader(const GLenum shaderType, const char *shaderCode);

    void createTexture(GLuint *texture, const f32 *data, const std::size_t width, const std::size_t height, const GLint swizzle_mask[4]) noexcept;

    void createTexture(GLuint *texture, const std::size_t width, const std::size_t height) noexcept;

    void dumpArrayToFile(const std::vector<f32> &buffer, i32 w, i32 h, const std::string &name = "out.txt");

    enum BufferBinding
    {
        WRITE,
        READ,
        KERNEL,
        DATA,
        COLOR,
        BOUNDING_BOXES,
        CENTER_OF_MASS,
        NONE
    };

    struct alignas(VECTOR4_ALIGNMENT) Color
    {
        f32 R;
        f32 G;
        f32 B;
    };

    struct ColorPalette
    {
        u32 n;
        Color colors[MAX_COLORS];
    };

    struct ShaderControls
    {
        f32 noiseUvScale0 = 0.012f;
        f32 noiseUvScale1 = 0.035f;
        f32 noiseUvScale2 = 0.09f;
        f32 noiseTimeScale0 = 0.15f;
        f32 noiseTimeScale1 = 0.4f;
        f32 noiseTimeScale2 = 0.7f;
        f32 noisePhase1 = 7.3f;
        f32 noisePhase2 = 31.7f;
        f32 noiseWeight0 = 4.8f;
        f32 noiseWeight1 = 2.6f;
        f32 noiseWeight2 = 1.1f;
        f32 stateCurlBase = 2.9f;
        f32 stateCurlScale = 5.4f;
        f32 fluidCurlScale = 2.4f;
        f32 vorticityFluidScale = 0.5f;
        f32 vorticityConfinement = 1.8f;
        f32 turbulenceBase = 0.9f;
        f32 turbulenceDensityScale = 1.6f;
        f32 buoyancyBase = 0.2f;
        f32 buoyancyStateScale = 1.2f;
        f32 buoyancyGradientScale = 1.5f;
        f32 advectionScale = 0.62f;
        f32 injectionMinState = 0.035f;
        f32 injectionMaxState = 0.22f;
        f32 injectionBase = 0.075f;
        f32 injectionStateScale = 0.34f;
        f32 neighborAverageWeight = 0.25f;
        f32 laplacianDiffusionScale = 0.16f;
        f32 viscosity = 0.58f;
        f32 dissipation = 0.955f;
        f32 foamShearScale = 0.9f;
        f32 foamLaplacianScale = 2.0f;
        f32 energyVelocityScale = 0.11f;
        f32 energyDensityScale = 2.0f;
        f32 stateAdvectionScale = 0.12f;
        f32 transportMixScale = 0.40f;
        f32 overlayDensityScale = 0.82f;
        f32 overlayEnergyScale = 0.38f;
        f32 overlayMax = 1.0f;
        f32 wispBase = 0.08f;
        f32 wispEnergyScale = 0.35f;
        f32 gridStateMax = 0.1f;
        f32 gridColor = 0.2f;
        f32 gridAlpha = 0.2f;
        std::array<f32, 3> smokeColorLow = {0.01f, 0.08f, 0.16f};
        std::array<f32, 3> smokeColorHigh = {0.08f, 0.45f, 0.85f};
        std::array<f32, 3> wispColor = {0.0f, 0.0f, 0.0f};
        std::array<f32, 4> centerOfMassColor = {1.0f, 0.0f, 0.0f, 1.0f};
    };

    struct alignas(8) c64 : public cufftComplex
    {
        c64() = default;

        __device__ __host__ c64(f32 real, f32 imag)
        {
            x = real;
            y = imag;
        }

        __device__ __host__ c64 &operator=(const c64 &rhs)
        {
            x = rhs.x;
            y = rhs.y;
            return *this;
        }

        __device__ c64 operator*(const c64 &rhs) const
        {
            return {x * rhs.x - y * rhs.y, x * rhs.y + y * rhs.x};
        }

        __device__ c64 operator+(const c64 &rhs) const
        {
            return {x + rhs.x, y + rhs.y};
        }

        __device__ c64 operator*(const f32 rhs) const
        {
            return {x * rhs, y * rhs};
        }

        __device__ f32 abs() const
        {
            return std::sqrt(x * x + y * y);
        }

        __device__ c64 clamp() const
        {
            return {x <= 0.f ? 0.f : (x >= 1.f ? 1.f : x), 0.f};
        }
    };

};