#include "lenia/engine.hpp"
#include "lenia/ui.hpp"

#define STB_IMAGE_IMPLEMENTATION
#include "stb/stb_image.h"

#include <fstream>
#include <iostream>
#include <random>
#include <sstream>

Lenia::Core::Engine::Engine() noexcept : Engine(1024, 1024, 10) {};


Lenia::Core::Engine::Engine(const u32 w, const u32 h, const u16 scale, const ColorPalette& colorPalette) noexcept : m_width(w), m_height(h), m_scale(scale) {
    initGL();

    loadAnimalsFromCSV();
    m_animalIdx = 0;
    m_animals[m_animalIdx].bind();

    m_simulation = std::make_unique<Simulation>(m_width, m_height, m_scale);
    auto cells = m_animals[m_animalIdx].getCells(); 
    m_simulation->placeCells(cells, m_animals[m_animalIdx].m_w, m_animals[m_animalIdx].m_h, 0, 0);

    m_colorBuffer = Core::Buffer<Core::ColorPalette>(Core::BufferBinding::COLOR, {colorPalette});
    applyColorPalette(colorPalette);

    m_numGroupsX = (m_simulation->m_w + 31) / 32;
    m_numGroupsY = (m_simulation->m_h + 31) / 32;
}

void Lenia::Core::Engine::initGL() noexcept {
    i32 width, height, channels;
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;

    if (!glfwInit()) {
        std::cerr << "Failed to initialize GLFW" << std::endl;
    }
    m_window = glfwCreateWindow(m_width, m_width, "", NULL, NULL);
    if (!m_window) {
        glfwTerminate();
    }

    unsigned char* const pixels = stbi_load("../resources/lenia.png", &width, &height, &channels, 4);
    GLFWimage icon{width, height, pixels};

    glfwSetWindowIcon(m_window, 1, &icon); 
    stbi_image_free(pixels); 

    glfwMakeContextCurrent(m_window);
    glfwSetWindowTitle(m_window, "Lenia");
    gladLoadGLLoader((GLADloadproc)glfwGetProcAddress);
    ImGui_ImplGlfw_InitForOpenGL(m_window, true); 
    ImGui_ImplOpenGL3_Init();

    std::string compute_shader_code = Lenia::Core::loadShaderFile("../shaders/lenia.comp");
    std::string frag_shader_code = Lenia::Core::loadShaderFile("../shaders/lenia.frag");
    std::string vertex_shader_code = Lenia::Core::loadShaderFile("../shaders/lenia.vert");

    constexpr float vertices[] = {
        -1.0f, -1.0f, 0.0f,
        1.0f, -1.0f, 0.0f,
        1.0f, 1.0f, 0.0f,
        -1.0f, 1.0f, 0.0f
    };

    glGenVertexArrays(1, &m_VAO);
    glGenBuffers(1, &m_VBO);
    glfwSwapInterval(0);

    glBindVertexArray(m_VAO);
    glBindBuffer(GL_ARRAY_BUFFER, m_VBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(vertices), vertices, GL_STATIC_DRAW);
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(f32), (void*)0);
    glEnableVertexAttribArray(0);

    GLuint compute_shader = createShader(GL_COMPUTE_SHADER, compute_shader_code.c_str());
	GLuint fragment_shader = createShader(GL_FRAGMENT_SHADER, frag_shader_code.c_str());
	GLuint vertex_shader = createShader(GL_VERTEX_SHADER, vertex_shader_code.c_str());

    m_shaderProgram = glCreateProgram();
    m_computeProgram = glCreateProgram();

    glAttachShader(m_computeProgram, compute_shader);
	glLinkProgram(m_computeProgram);
    glAttachShader(m_shaderProgram, fragment_shader);
    glAttachShader(m_shaderProgram, vertex_shader);
    glLinkProgram(m_shaderProgram);
    checkProgramLinking(m_shaderProgram);
    checkProgramLinking(m_computeProgram);
    glDeleteShader(compute_shader);
    glDeleteShader(fragment_shader);
    glDeleteShader(vertex_shader);
}

void Lenia::Core::Engine::loadAnimalsFromCSV() noexcept {
    //std::map<std::string, Lenia::Animal> animals;
    std::ifstream file("../resources/animals.csv");
    if (!file.is_open()) {
        std::cerr << "file resources/animals.csv couldn't be opened" << std::endl;
        exit(-1);
    }
    std::string line;
    while (std::getline(file, line)) {
        std::vector<std::string> tokens;
        std::stringstream ss(line);
        std::string token;
        while (std::getline(ss, token, ','))
            tokens.push_back(token);
        const u32 R = (u32)std::stoul(tokens[5]);
        const f32 dt = 1.f / std::stof(tokens[6]);
        std::stringstream beta_stream(tokens[7]);
        std::vector<f32> vBeta;
        while (std::getline(beta_stream, token, ';'))
            vBeta.push_back(std::stof(token));
        const f32 mu = std::stof(tokens[8]);
        const f32 sigma = std::stof(tokens[9]);
        const KernelCore kn = static_cast<KernelCore>(std::stoi(tokens[10]) - 1);
        const GrowthFunction gn = static_cast<GrowthFunction>(std::stoi(tokens[11]) - 1);
        const Taxonomy tax = {tokens[4], tokens[0], tokens[1], tokens[2], tokens[3]};
        m_animals.emplace_back(tax, R, m_scale, dt, vBeta, mu, sigma, kn, gn, tokens[12]);
    }
}

void Lenia::Core::Engine::setAnimalIdxByName(const std::string& name) {
    
    for (m_animalIdx = 0; m_animalIdx < m_animals.size(); ++m_animalIdx) {
        if (m_animals[m_animalIdx].m_taxonomy.species == name) {
            return;
        }
    }
}

void Lenia::Core::Engine::handleKeyboardInputs() noexcept {
    i32 scroll;
    if (ImGui::IsKeyPressed(ImGuiKey_I)) {
        m_showInfo = !m_showInfo;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_P)) {
        m_paused = !m_paused;
        Lenia::UI::modeChangeText("[PAUSED]");
    }
    if (ImGui::IsKeyPressed(ImGuiKey_RightArrow))  {
        m_animalIdx = (m_animalIdx + 1) % m_animals.size();
        reset();
    }else if (ImGui::IsKeyPressed(ImGuiKey_LeftArrow))  {
        m_animalIdx = (m_animalIdx - 1) % m_animals.size();
        reset();
    }
    if (ImGui::IsKeyPressed(ImGuiKey_DownArrow))  {                
        m_scale = std::max(m_scale - 1, 1);
        m_animals[m_animalIdx].m_scale = m_scale;
        m_simulation->m_scale = m_scale;
        reset();
    }else if (ImGui::IsKeyPressed(ImGuiKey_UpArrow)) {
        m_scale = std::min(m_scale + 1, 30);
        m_animals[m_animalIdx].m_scale = m_scale;
        m_simulation->m_scale = m_scale;
        reset();
    }
    if (ImGui::IsKeyPressed(ImGuiKey_R)) {
        reset();
    }
    if (ImGui::IsKeyPressed(ImGuiKey_B)) {
        m_showBoundingBoxes = !m_showBoundingBoxes;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_G)) {
        m_showGrid = !m_showGrid;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_D)) {
        m_drawMode = DrawMode::CIRCLE;
    }
    if ((scroll = ImGui::GetIO().MouseWheel) != 0 && m_drawMode != DrawMode::NONE) {
        m_drawRadius *= scroll > 0 ? 1.1 : 0.9;
    }
    Lenia::UI::kernelWindow(m_animals[m_animalIdx]);

}

void Lenia::Core::Engine::reset() noexcept {
    m_simulation->clearCells();
    m_animals[m_animalIdx].bind();
    m_simulation->placeCells(
        m_animals[m_animalIdx].getCells(), 
        m_animals[m_animalIdx].m_w, 
        m_animals[m_animalIdx].m_h, 
        (m_width / 2 - 300), 
        (m_height / 2 - 300)
    );
}

[[nodiscard]] b8 Lenia::Core::Engine::shouldRun() const noexcept {
    return !glfwWindowShouldClose(m_window);
}

void Lenia::Core::Engine::update() noexcept {
    glfwPollEvents();
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();
    handleKeyboardInputs();
    Animal& currentAnimal = m_animals[m_animalIdx];
    if (m_showInfo) {
        Lenia::UI::statsText(*m_simulation, currentAnimal);
    }
    if (m_drawMode != DrawMode::NONE) {
        handleDrawMode();
    }
    glClear(GL_COLOR_BUFFER_BIT);
    if (!m_paused)  {
        glUseProgram(m_computeProgram);
        glDispatchCompute(m_numGroupsX, m_numGroupsY, 1);
        glMemoryBarrier(GL_SHADER_STORAGE_BARRIER_BIT);
        glUniform1ui(0, m_simulation->m_w);
        glUniform1ui(1, m_simulation->m_h);
        glUniform1ui(2, currentAnimal.m_r * currentAnimal.m_scale);
        glUniform1f(3, currentAnimal.m_dt);
        glUniform1f(4, currentAnimal.m_mu);
        glUniform1f(5, currentAnimal.m_sigma);
        glUniform1f(6, currentAnimal.m_dx2);
        glUniform1ui(7, (GLuint)currentAnimal.m_gn);
        glUseProgram(m_shaderProgram);
        glUniform1ui(0, m_simulation->m_w);
        glUniform1ui(1, m_simulation->m_h);
        glUniform2ui(2, m_simulation->m_centerOfMass.m_x, m_simulation->m_centerOfMass.m_y);
        glUniform1i(3, m_showBoundingBoxes);
        glUniform1i(4, m_showGrid);
        glBindVertexArray(m_VAO);
        if (m_showInfo) {
            m_simulation->updateTimed();
        }
        else {
            m_simulation->update();
        }
    }
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_BYTE, ce_indices);
    ImGui::Render();
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
    glfwSwapBuffers(m_window);
}

void Lenia::Core::Engine::handleDrawMode() noexcept {
    ImVec2 mouse = ImGui::GetMousePos();
    ImDrawList* draw_list = ImGui::GetBackgroundDrawList();
    draw_list->AddCircle(mouse, m_drawRadius, IM_COL32(255, 0, 0, 255), 64);
    if (ImGui::IsMouseDown(ImGuiMouseButton_Left)) {
        m_simulation->placeCellsCircle(mouse.x, mouse.y, m_drawRadius, 1);
    } else if (ImGui::IsMouseDown(ImGuiMouseButton_Right)) {
        m_simulation->placeCellsCircle(mouse.x, mouse.y, m_drawRadius, 0);
    }
}

void Lenia::Core::Engine::applyColorPalette(const ColorPalette& colorPalette) noexcept {
    m_colorBuffer[0] = colorPalette;
    m_colorBuffer.storeDataInShader();
}

Lenia::Core::Engine::~Engine() noexcept {
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

std::string Lenia::Core::loadShaderFile(const std::string& name) {
    std::ifstream file(name);
    std::string shader_code;
    if (file.is_open()) {
        std::string line;
        while (getline(file, line)) {
            shader_code += line + "\n";
        }
        file.close();
    }
    else {
        std::cerr << "Failed to open shader file: " << name << std::endl;
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
        std::cerr << "ERROR: Shader Compilation Failed\n" << infoLog << std::endl;
    }
}

void Lenia::Core::checkProgramLinking(GLuint program) {
    GLint success;
    glGetProgramiv(program, GL_LINK_STATUS, &success);
    if (!success) {
        char infoLog[512];
        glGetProgramInfoLog(program, 512, NULL, infoLog);
        std::cerr << "ERROR: Program Linking Failed\n%s\n" << infoLog << std::endl;
    }
}

GLuint Lenia::Core::createShader(const GLenum shaderType, const char* shaderCode) {
    GLuint shader = glCreateShader(shaderType);
    glShaderSource(shader, 1, &shaderCode, NULL);
    glCompileShader(shader);
    checkShaderCompilation(shader);
    return shader;
}