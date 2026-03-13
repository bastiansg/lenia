#pragma once

#include "core.hpp"
#include "colors.hpp"
#include "simulation.hpp"
#include "animal.hpp"
#include "glm/vec2.hpp"
#include <map>
#include <memory>
#include <optional>

namespace Lenia {

    class Engine {

        enum DrawMode {
            NONE, 
            CIRCLE,
            STENCIL
        };

        enum RenderMode {
            NORMAL,
            BOUNDINGBOXES,
            CUDA
        };

        public:
            explicit Engine() noexcept;
            explicit Engine(const u32 w, const u32 h, const u8 scale, const ColorPalette &colorPalette = Magma) noexcept;
            explicit Engine(const u32 w, const u32 h, const u8 scale, const f32 dtOverride, const ColorPalette &colorPalette = Magma) noexcept;
            ~Engine() noexcept;
            [[nodiscard]] b8 shouldRun() const noexcept;
            void update() noexcept;
            void updateGL();
            void applyColorPalette(const ColorPalette &colorPalette) noexcept;
            const std::vector<AnimalInfo> &getAnimalInfo() const noexcept;
        private:
            [[nodiscard]] b8 loadShaderControls() noexcept;
            [[nodiscard]] b8 saveShaderControls() const noexcept;
            void applyShaderControls() noexcept;
            void reset() noexcept;
            void handleKeyboardInputs() noexcept;
            void move(const u16 dir_offset, const b8 right, const f32 value);
            void handleDrawMode() noexcept;
            void loadAnimalInfo() noexcept;
            void initGL() noexcept;
            void dumpAnimals();
            [[nodiscard]] f32 getCurrentDt() const noexcept;
            [[nodiscard]] glm::vec2 getCameraOffset() const noexcept;
            [[nodiscard]] glm::vec2 screenToWorld(const glm::vec2& screenPosition) const noexcept;
            [[nodiscard]] ImVec2 worldToScreen(const glm::vec2& worldPosition) const noexcept;

            RenderMode m_renderMode;

            u32 m_width = 1024;
            u32 m_height = 1024;
            u8 m_scale = 10;
            u32 count = 0;

            b8 m_paused = false;
            b8 m_showInfo = false;
            b8 m_showBoundingBoxes = false;
            b8 m_showGrid = true;
            b8 m_showCenterOfMass = true;
            b8 m_controlMode = false;
            b8 m_focusMode = false;
            b8 m_showShaderControls = false;

            DrawMode m_drawMode = DrawMode::NONE;
            f32 m_drawRadius = 10.f;

            GLFWwindow* m_window;
            GLuint m_shaderProgram;
            GLuint m_computeProgram;
            GLuint m_VAO, m_VBO;

            std::unique_ptr<Simulation> m_simulation = nullptr;
            std::vector<Lenia::AnimalInfo> m_animals;
            std::unique_ptr<Lenia::Animal> m_currentAnimal;
            std::size_t m_animalIdx = 0;
            
            std::unique_ptr<Buffer<ColorPalette>> m_colorBuffer;
            ShaderControls m_shaderControls;
            ShaderControls m_loadedShaderControls;
            std::optional<f32> m_dtOverride;

            f64 m_updateTime;

            static constexpr GLubyte ce_indices[] = {
                0, 1, 2,
                0, 2, 3
            };

            GLuint m_numGroupsX;
            GLuint m_numGroupsY;
        };
}