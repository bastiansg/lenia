#pragma once
<<<<<<< HEAD
#include "lenia/ui.hpp"

namespace Lenia::Core {

    std::string loadShaderFile(const std::string& name);
    void checkShaderCompilation(GLuint shader);
    void checkProgramLinking(GLuint program);
    GLuint createShader(const GLenum shaderType, const char* shaderCode);

    class Engine {
    public:
        Engine();

        void updateLenia();
        b8 shouldRun();
        void terminateLenia();

    private:
        u16 m_scale = 10;
        u16 m_width = 1024;
        u16 m_height = 1024;
        b8 m_paused = false;
        b8 m_showInfo = false;

        Simulation m_simulation;
        
        std::map<std::string, Lenia::Animal> m_animals;
        std::map<std::string, Lenia::Animal>::iterator m_animalsIt;
        Animal* m_currentAnimal = nullptr;
        
        GLFWwindow* m_window;
        GLuint m_shaderProgram;
        GLuint m_computeProgram;
        GLuint m_VAO;
        GLuint m_VBO;
        GLuint m_numGroupsX;
        GLuint m_numGroupsY;
        static constexpr GLubyte ce_indices[] = {0, 1, 2, 0, 2, 3};

        void handleKeyboardInputs();
        void initGLFWWindow();
        void setupGL();
        void reset();

=======

#include "lenia/core.hpp"
#include "lenia/simulation.hpp"
#include "lenia/animal.hpp"
#include <map>
#include <memory>

namespace Lenia::Core {

    class Engine {
    public:
        Engine() noexcept;
        ~Engine() noexcept;
        Engine(const u32 w, const u32 h, const u16 scale) noexcept;
        [[nodiscard]] b8 shouldRun() const noexcept;
        void update() noexcept;
    private:
        void reset() noexcept;
        void handleKeyboardInputs() noexcept;
        void initGL() noexcept;

        u32 m_width = 1024;
        u32 m_height = 1024;
        u16 m_scale = 10;

        b8 m_paused = false;
        b8 m_showInfo = false;

        GLFWwindow* m_window;
        GLuint m_shaderProgram;
        GLuint m_computeProgram;
        GLuint m_VAO, m_VBO;

        std::unique_ptr<Simulation> m_simulation = nullptr;

        std::map<std::string, Lenia::Animal> m_animals;
        Lenia::Animal *m_currentAnimal;
        std::map<std::string, Lenia::Animal>::iterator m_animalsIt;

        static constexpr GLubyte ce_indices[] = {
            0, 1, 2,
            0, 2, 3
        };

        GLuint m_numGroupsX;
        GLuint m_numGroupsY;
>>>>>>> 6b34b27 (engine class working)
    };
}