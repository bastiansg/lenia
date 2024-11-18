#pragma once
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

    };
}