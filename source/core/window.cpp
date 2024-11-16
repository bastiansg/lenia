#include "lenia/window.hpp"

#include <iostream>
#include <fstream>

Lenia::Core::Window::Window() {
    m_width = 1024;
    m_height = 1024;
    initGLFWWindow();
    setupGL();
    m_simulation = Simulation(1024, 1024, 10, Magma);
    m_scale = 10;
    m_startingAnimal = "Orbium unicaudatus";
    m_paused = false;
    m_showInfo = false; 
    m_animals = Animal::loadAnimalsFromCSV(10);
    m_currentAnimal = &m_animals.at(m_startingAnimal);
};

b8 Lenia::Core::Window::shouldRun() {
    return !glfwWindowShouldClose(m_window);
}

void Lenia::Core::Window::initGLFWWindow() {
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;

    if (!glfwInit()) {
        std::cerr << "failed to initialize GLFW" << std::endl;
    }
    m_window = glfwCreateWindow(m_width, m_height, "", NULL, NULL);
    if (!m_window)
    {
        std::cerr << "error initializing window" << std::endl;
        glfwTerminate();
    }
    glfwMakeContextCurrent(m_window);
    gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);
    ImGui_ImplGlfw_InitForOpenGL(m_window, true); 
    ImGui_ImplOpenGL3_Init();
}

void Lenia::Core::Window::reset() {
    m_currentAnimal->bind();
    m_simulation.clearCells();
    m_simulation.placeCells(m_currentAnimal->getCells(), m_currentAnimal->m_w, m_currentAnimal->m_h, 512, 512);
}

void Lenia::Core::Window::handleKeyboardInputs() {
    if (ImGui::IsKeyPressed(ImGuiKey_I)) [[unlikely]] {
        m_showInfo = !m_showInfo;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_P)) [[unlikely]] {
        m_paused = !m_paused;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_RightArrow)) [[unlikely]] {
        m_animalsIt++;
        m_currentAnimal = &m_animalsIt->second;
        reset();
    }
    if (ImGui::IsKeyPressed(ImGuiKey_LeftArrow)) [[unlikely]] {
        m_animalsIt--;
        m_currentAnimal = &m_animalsIt->second;
        reset();
    }
    if (ImGui::IsKeyPressed(ImGuiKey_DownArrow)) [[unlikely]] {
        m_scale--;
        m_currentAnimal->m_scale = m_scale;
        m_simulation.m_scale = m_scale;
        reset();
    }
    if (ImGui::IsKeyPressed(ImGuiKey_UpArrow)) [[unlikely]] {
        m_scale++;
        m_currentAnimal->m_scale = m_scale;
        m_simulation.m_scale = m_scale;
        reset();
    }
}

void Lenia::Core::Window::updateLenia() {
    glfwPollEvents();
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();
    handleKeyboardInputs();
    if (m_showInfo) {
        Lenia::Core::showInfoText(m_simulation, *m_currentAnimal);
    }
    glClear(GL_COLOR_BUFFER_BIT);
    if (!m_paused) [[likely]] {
        glUseProgram(m_computeProgram);
        glDispatchCompute(m_numGroupsX, m_numGroupsY, 1);
        glMemoryBarrier(GL_SHADER_STORAGE_BARRIER_BIT);
        glUniform1ui(0, m_simulation.m_w);
        glUniform1ui(1, m_simulation.m_h);
        glUniform1ui(2, m_currentAnimal->m_r * m_currentAnimal->m_scale);
        glUniform1f(3, m_currentAnimal->m_dt);
        glUniform1f(4, m_currentAnimal->m_mu);
        glUniform1f(5, m_currentAnimal->m_sigma);
        glUniform1f(6, m_currentAnimal->m_dx2);
        glUniform1ui(7, (GLuint)m_currentAnimal->m_gn);
        glUseProgram(m_shaderProgram);
        glUniform1ui(0, m_simulation.m_w);
        glUniform1ui(1, m_simulation.m_h);
        glUniform2ui(2, m_simulation.m_centerOfMass.m_x, m_simulation.m_centerOfMass.m_y);
        glBindVertexArray(m_VAO);
        if (m_showInfo) {
            m_simulation.updateTimed();
        } else {
            m_simulation.update();
        }
    }
}

std::string Lenia::Core::loadShaderFile(const std::string& name) {
    std::ifstream file(name);
    std::string shader_code;
    if (file.is_open()) {
        std::string line;
        while (getline(file, line)) {
            shader_code += line + "\n";
        }
        file.close();
    } else {
        std::cerr << "failed to open shader file: " << name << std::endl;
        exit(-1);
    }
    return shader_code;
}

void Lenia::Core::checkShaderCompilation(GLuint shader) {
    GLint success;
    glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
    if (!success) {
        char infoLog[512];
        glGetShaderInfoLog(shader, 512, NULL, infoLog);
        std::cerr << "shader compilation failed\n" << infoLog << std::endl;
    }
}

void Lenia::Core::checkProgramLinking(GLuint program) {
    GLint success;
    glGetProgramiv(program, GL_LINK_STATUS, &success);
    if (!success) {
        char infoLog[512];
        glGetProgramInfoLog(program, 512, NULL, infoLog);
        std::cerr << "program linking failed\n%s\n" << infoLog << std::endl;
    }
}

GLuint Lenia::Core::createShader(const GLenum shaderType, const char* shaderCode) {
    GLuint shader = glCreateShader(shaderType);
    glShaderSource(shader, 1, &shaderCode, NULL);
    glCompileShader(shader);
    checkShaderCompilation(shader);
    return shader;
}

void Lenia::Core::Window::setupGL() {
    std::string compute_shader_code = Lenia::Core::loadShaderFile("../shaders/lenia.comp");
    std::string frag_shader_code = Lenia::Core::loadShaderFile("../shaders/lenia.frag");
    std::string vertex_shader_code = Lenia::Core::loadShaderFile("../shaders/lenia.vert");

    constexpr float vertices[] = {-1.0f, -1.0f, 0.0f, 1.0f, -1.0f, 0.0f, 1.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f};

    glGenVertexArrays(1, &m_VAO);
    glGenBuffers(1, &m_VBO);
    glfwSwapInterval(0);

    glBindVertexArray(m_VAO);
    glBindBuffer(GL_ARRAY_BUFFER, m_VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(f32), (void*)0);
    glEnableVertexAttribArray(0);

    GLuint computeShader = createShader(GL_COMPUTE_SHADER, compute_shader_code.c_str());
    GLuint fragmentShader = createShader(GL_FRAGMENT_SHADER, frag_shader_code.c_str());
    GLuint vertexShader = createShader(GL_VERTEX_SHADER, vertex_shader_code.c_str());

    m_shaderProgram = glCreateProgram();
    m_computeProgram = glCreateProgram();
    glAttachShader(m_computeProgram, computeShader);
    glLinkProgram(m_computeProgram);
    glAttachShader(m_shaderProgram, fragmentShader);
    glAttachShader(m_shaderProgram, vertexShader);
    glLinkProgram(m_shaderProgram);
    glDeleteShader(computeShader);
    glDeleteShader(fragmentShader);
    glDeleteShader(vertexShader);

    m_numGroupsX = (m_width + 31) / 32;
    m_numGroupsY = (m_height + 31) / 32;
}

void Lenia::Core::Window::terminateLenia() {
    glDeleteVertexArrays(1, &m_VAO);
    glDeleteProgram(m_shaderProgram);
    glDeleteProgram(m_computeProgram);
    glDeleteBuffers(1, &m_VBO);
    glfwDestroyWindow(m_window);
    glfwTerminate();
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();
}