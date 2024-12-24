#pragma once

#include "core.hpp"
#include "colors.hpp"
#include "simulation.hpp"
#include "animal.hpp"
#include <map>
#include <memory>

namespace Lenia {

    class Engine {

    enum class DrawMode {
        NONE, 
        CIRCLE,
        STENCIL
    };

    public:
        explicit Engine() noexcept;
        explicit Engine(const u32 w, const u32 h, const u8 scale, const ColorPalette& colorPalette = Magma) noexcept;
        ~Engine() noexcept;
        [[nodiscard]] b8 shouldRun() const noexcept;
        void update() noexcept;
        void updateGL();
        void applyColorPalette(const ColorPalette& colorPalette) noexcept;
        const std::vector<AnimalInfo>& getAnimalInfo() const noexcept;
    private:
        void reset() noexcept;
        void handleKeyboardInputs() noexcept;
        void handleDrawMode() noexcept;
        void loadAnimalInfo() noexcept;
        void initGL() noexcept;
        void dumpAnimals();
        void fftKernel() noexcept;
        void fftUpdate() noexcept;

        u32 m_width = 1024;
        u32 m_height = 1024;
        u8 m_scale = 10;

        b8 m_paused = false;
        b8 m_showInfo = false;
        b8 m_showBoundingBoxes = false;
        b8 m_showGrid = true;
        b8 m_showCenterOfMass = true;
        b8 m_controlMode = false;

        DrawMode m_drawMode = DrawMode::NONE;
        f32 m_drawRadius = 10.f;

        GLFWwindow* m_window;
        GLuint m_shaderProgram;
        GLuint m_computeProgram;
        GLuint m_VAO, m_VBO;

        std::unique_ptr<Simulation> m_simulation = nullptr;
        std::vector<Lenia::AnimalInfo> m_animals;
        std::unique_ptr<Lenia::Animal> m_currentAnimal;
        size_t m_animalIdx;
        
		std::unique_ptr<Buffer<ColorPalette>> m_colorBuffer;

        f64 m_updateTime;

        static constexpr GLubyte ce_indices[] = {
            0, 1, 2,
            0, 2, 3
        };

        GLuint m_numGroupsX;
        GLuint m_numGroupsY;
    };
}