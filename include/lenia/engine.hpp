#pragma once

#include "lenia/core.hpp"
#include "lenia/colors.hpp"
#include "lenia/simulation.hpp"
#include "lenia/animal.hpp"
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
        Engine() noexcept;
        ~Engine() noexcept;
        Engine(const u32 w, const u32 h, const u16 scale, const ColorPalette& colorPalette = Magma) noexcept;
        [[nodiscard]] b8 shouldRun() const noexcept;
        void update() noexcept;
        void applyColorPalette(const ColorPalette& colorPalette) noexcept;
    private:
        void reset() noexcept;
        void handleKeyboardInputs() noexcept;
        void handleDrawMode() noexcept;
        void loadAnimalInfo() noexcept;
        void initGL() noexcept;
        void setAnimalIdxByName(const std::string& name);

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
        u16 m_drawRadius = 10;

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