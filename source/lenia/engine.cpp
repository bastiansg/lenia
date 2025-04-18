#include "engine.hpp"
#include "ui.hpp"

#define STB_IMAGE_IMPLEMENTATION
#include "stb_image.h"

#include "glm/glm.hpp"
#include "glm/vec2.hpp"

#include <fstream>
#include <iostream>
#include <random>
#include <sstream>

Lenia::Engine::Engine() noexcept : Engine(1024, 1024, 10, 0) {};

Lenia::Engine::Engine(const u32 w, const u32 h, const u8 scale, const u16 fpslimit, const ColorPalette& colorPalette) noexcept : 
    m_width(w), 
    m_height(h), 
    m_scale(scale),
    m_fpsLimit(fpslimit),
    m_fpsLimitMs(fpslimit ? 1.0 / fpslimit : 0.0),
    m_colorBuffer() {
    initGL();

    loadAnimalInfo();
    m_animalIdx = 0;
    m_currentAnimal = std::make_unique<Animal>(m_animals[m_animalIdx], scale);

    m_currentAnimal->computePadded(m_width, m_height);
    m_simulation = std::make_unique<Simulation>(m_width, m_height, m_scale);
    auto cells = m_currentAnimal->getCells(); 


    m_simulation->placeCells(cells, m_currentAnimal->m_info.m_w, m_currentAnimal->m_info.m_h, 0, 0);

    m_colorBuffer = std::make_unique<Buffer<ColorPalette>, BufferBinding, std::vector<ColorPalette>>(BufferBinding::COLOR, {colorPalette});
    applyColorPalette(colorPalette);
    m_simulation->loadFFT();

    m_numGroupsX = (m_simulation->m_w + 31) / 32;
    m_numGroupsY = (m_simulation->m_h + 31) / 32;
}

Lenia::Engine::~Engine() noexcept {
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

const std::vector<Lenia::AnimalInfo>& Lenia::Engine::getAnimalInfo() const noexcept {
    return m_animals;
}

void Lenia::Engine::initGL() noexcept {
    i32 width, height, channels;
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;
    io.Fonts->AddFontFromFileTTF("../resources/consolas.ttf", 50);

    if (!glfwInit()) {
        std::cerr << "Failed to initialize GLFW" << std::endl;
        exit(-1);
    }
    m_window = glfwCreateWindow(m_width, m_width, "", NULL, NULL);
    if (!m_window) {
        glfwTerminate();
    }

    u8* const pixels = stbi_load("../resources/lenia.png", &width, &height, &channels, 4);
    GLFWimage icon{width, height, pixels};

    glfwSetWindowIcon(m_window, 1, &icon); 
    stbi_image_free(pixels); 

    glfwMakeContextCurrent(m_window);
    glfwSetWindowTitle(m_window, "Lenia");
    gladLoadGL((GLADloadfunc)glfwGetProcAddress);
    ImGui_ImplGlfw_InitForOpenGL(m_window, true); 
    ImGui_ImplOpenGL3_Init();

    std::string compute_shader_code = Lenia::loadShaderFile("../shaders/lenia.comp");
    std::string frag_shader_code = Lenia::loadShaderFile("../shaders/lenia.frag");
    std::string vertex_shader_code = Lenia::loadShaderFile("../shaders/lenia.vert");

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

void Lenia::Engine::loadAnimalInfo() noexcept {
    std::ifstream file("../resources/animals_dim.csv");
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
        const size_t R = (size_t)std::stoul(tokens[5]);
        const f32 dt = 1.f / std::stof(tokens[6]);
        std::stringstream beta_stream(tokens[7]);
        std::vector<f32> vBeta;
        while (std::getline(beta_stream, token, ';'))
            vBeta.push_back(std::stof(token));
        const f32 mu = std::stof(tokens[8]);
        const f32 sigma = std::stof(tokens[9]);
        const KernelCore kn = static_cast<KernelCore>(std::stoi(tokens[10]) - 1);
        const GrowthFunction gn = static_cast<GrowthFunction>(std::stoi(tokens[11]) - 1);
        const size_t w = std::stoul(tokens[12]);
        const size_t h = std::stoul(tokens[13]);
        const Taxonomy tax = {tokens[4], tokens[0], tokens[1], tokens[2], tokens[3]};
        const std::vector<f32> beta = vBeta;
        auto animal = AnimalInfo{tax, R, w, h, m_scale, dt, 1.f / (f32)R * (f32)R, mu, sigma, beta, kn, gn, tokens[14]};
        m_animals.push_back(animal);
    }
}

void Lenia::Engine::dumpAnimals() {
    std::ofstream outfile("../resources/animals_dim.csv");
    for (const auto& animal : m_animals) {
        std::stringstream beta;
        for (size_t i = 0; i < animal.m_beta.size() - 1; i++) {
            beta << animal.m_beta[i] << ";";
        }
        beta << *(animal.m_beta.end() - 1);
        Animal temp = Animal(animal, 1);
        outfile 
            << animal.m_taxonomy._class << ","
            << animal.m_taxonomy.order << ","
            << animal.m_taxonomy.family << ","
            << animal.m_taxonomy.subfamily << ","
            << animal.m_taxonomy.species << ","
            << animal.m_r << ","
            << 1 / animal.m_dt << ","
            << beta.str() << ","
            << animal.m_mu << ","
            << animal.m_sigma << ","
            << static_cast<char>(static_cast<u8>(animal.m_kn) + '0' + 1) << ","
            << static_cast<char>(static_cast<u8>(animal.m_gn) + '0' + 1) << ","
            << temp.m_w << ","
            << temp.m_h << ","
            << animal.m_rle << ","
            << "\n";
    }
}

void Lenia::Engine::handleKeyboardInputs() noexcept {
    f32 scroll;
    constexpr u16 dir_offset = 90;
    if (ImGui::IsKeyPressed(ImGuiKey_I)) {
        m_showInfo = !m_showInfo;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_P)) {
        m_paused = !m_paused;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_RightArrow) && !m_controlMode)  {
        m_animalIdx = (m_animalIdx + 1) % m_animals.size();
        m_currentAnimal = std::make_unique<Animal>(m_animals[m_animalIdx], m_scale);
        reset();
    } else if (ImGui::IsKeyPressed(ImGuiKey_LeftArrow) && !m_controlMode)  {
        m_animalIdx = m_animalIdx == 0 ? m_animals.size() - 1 : m_animalIdx - 1;
        m_currentAnimal = std::make_unique<Animal>(m_animals[m_animalIdx], m_scale);
        reset();
    }
    if (ImGui::IsKeyDown(ImGuiKey_RightArrow) && m_controlMode) {
        ImDrawList* draw_list = ImGui::GetBackgroundDrawList();
        glm::vec2 start = glm::vec2(m_simulation->m_centerOfMass[0], m_simulation->m_centerOfMass[1]);
        glm::vec2 dir = glm::normalize(glm::vec2(m_simulation->m_direction[0], m_simulation->m_direction[1]));
        ImVec2 left_circle = ImVec2(start.x - dir.y * dir_offset, start.y + dir.x * dir_offset);
        draw_list->AddCircle(left_circle, m_drawRadius * 2.5, IM_COL32(255, 0, 0, 255), 64);
        m_simulation->placeCellsCircle((u16)left_circle.x, (u16)left_circle.y, m_drawRadius * 2.5f, 0.f);
    } else if (ImGui::IsKeyDown(ImGuiKey_LeftArrow) && m_controlMode)  {
        ImDrawList* draw_list = ImGui::GetBackgroundDrawList();
        glm::vec2 start = glm::vec2(m_simulation->m_centerOfMass[0], m_simulation->m_centerOfMass[1]);
        glm::vec2 dir = glm::normalize(glm::vec2(m_simulation->m_direction[0], m_simulation->m_direction[1]));
        ImVec2 right_circle = ImVec2(start.x + dir.y * dir_offset, start.y - dir.x * dir_offset);
        draw_list->AddCircle(right_circle, m_drawRadius * 2.5, IM_COL32(255, 0, 0, 255), 64);
        m_simulation->placeCellsCircle((u16)right_circle.x, (u16)right_circle.y, m_drawRadius * 2.5f, 0.f);
    }
    if (ImGui::IsKeyPressed(ImGuiKey_DownArrow))  {                
        m_scale = std::max(m_scale - 1, 1);
        m_simulation->m_scale = m_scale;
        m_currentAnimal->resize(m_scale);
        reset();
    } else if (ImGui::IsKeyPressed(ImGuiKey_UpArrow)) {
        m_scale = std::min(m_scale + 1, 30);
        m_currentAnimal->resize(m_scale);
        m_simulation->m_scale = m_scale;
        reset();
    }
    if (ImGui::IsKeyPressed(ImGuiKey_R)) {
        count = 0;
        //reset();
    }
    if (ImGui::IsKeyPressed(ImGuiKey_B)) {
        m_showBoundingBoxes = !m_showBoundingBoxes;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_G)) {
        m_showGrid = !m_showGrid;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_M)) {
        m_showCenterOfMass = !m_showCenterOfMass;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_C)) {
        m_controlMode = !m_controlMode;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_D)) {
        m_drawMode = DrawMode::CIRCLE;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_Q)) {
        m_drawMode = DrawMode::STENCIL;
    }
    if (ImGui::IsKeyPressed(ImGuiKey_S)) {
        UI::searchAnimal(m_animals);
    }
    if ((scroll = ImGui::GetIO().MouseWheel) != 0.f && m_drawMode != DrawMode::NONE) {
        f32 scroll_amount = scroll > 0.f ? 1.1f : 0.9f;
        m_drawRadius = m_drawRadius > 5.f ? (m_drawRadius * scroll_amount) : 5.01f;
    }
}

void Lenia::Engine::reset() noexcept {
    m_simulation->clearCells();
    m_simulation->placeCells(
        m_currentAnimal->getCells(), 
        m_currentAnimal->m_info.m_w, 
        m_currentAnimal->m_info.m_h, 
        0, 
        0
    );
    m_simulation->loadFFT();
    m_currentAnimal->computePadded(m_width, m_height);
    m_currentAnimal->computeFFTKernel(m_width, m_height);
}

[[nodiscard]] b8 Lenia::Engine::shouldRun() const noexcept {
    return !glfwWindowShouldClose(m_window);
}

void Lenia::Engine::update() noexcept {
    if (m_fpsLimitMs)
        auto start = std::chrono::high_resolution_clock::now();
    f64 start = glfwGetTime();
    glfwPollEvents();
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplGlfw_NewFrame();
    ImGui::NewFrame();
    handleKeyboardInputs();
    if (m_showInfo) {
        UI::statsText(m_updateTime, *m_simulation, *m_currentAnimal.get(), m_animalIdx + 1, m_animals.size());
    }
    if (m_drawMode != DrawMode::NONE) {
        handleDrawMode();
    }
    if (m_controlMode) {
        UI::directionVector(*m_simulation);
    }
    glClear(GL_COLOR_BUFFER_BIT);
    if (!m_paused)  {
        updateGL();
        if (m_showInfo) {
	        auto updatestart = std::chrono::high_resolution_clock::now();
            m_simulation->updateFFTFast(*m_currentAnimal);
            m_simulation->m_updateTimeTotal = std::chrono::duration_cast<std::chrono::microseconds>(std::chrono::high_resolution_clock::now() - updatestart);
        } else {
            //m_simulation->update();
            m_simulation->updateFFTFast(*m_currentAnimal);
        }
    } else {
        UI::pausedText();
    }
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_BYTE, ce_indices);
    ImGui::Render();
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
    glfwSwapBuffers(m_window);
    m_updateTime = glfwGetTime() - start;
    if (m_fpsLimitMs && m_updateTime < m_fpsLimitMs) {
        u32 remaining = u32(1000 * m_fpsLimitMs - m_updateTime);
        std::this_thread::sleep_for(std::chrono::milliseconds(remaining));
    }
    count++;
}

void Lenia::Engine::updateGL() {
    /*glUseProgram(m_computeProgram);
    glDispatchCompute(m_numGroupsX, m_numGroupsY, 1);*/
    glMemoryBarrier(GL_SHADER_STORAGE_BARRIER_BIT);
    glUniform1ui(0, m_simulation->m_w);
    glUniform1ui(1, m_simulation->m_h);
    glUniform1ui(2, m_currentAnimal->m_info.m_r * m_currentAnimal->m_scale);
    glUniform1f(3, m_currentAnimal->m_info.m_dt);
    glUniform1f(4, m_currentAnimal->m_info.m_mu);
    glUniform1f(5, m_currentAnimal->m_info.m_sigma);
    glUniform1f(6, m_currentAnimal->m_info.m_dx2);
    glUniform1ui(7, (GLuint)m_currentAnimal->m_info.m_gn);
    glUseProgram(m_shaderProgram);
    glUniform1ui(0, m_simulation->m_w);
    glUniform1ui(1, m_simulation->m_h);
    glUniform1i(2, m_showBoundingBoxes);
    glUniform1i(3, m_showGrid);
    glUniform1i(4, m_showCenterOfMass);
    glBindVertexArray(m_VAO);
}

void Lenia::Engine::handleDrawMode() noexcept {
    ImVec2 mouse = ImGui::GetMousePos();
    ImDrawList* draw_list = ImGui::GetBackgroundDrawList();
    switch (m_drawMode) {
        default:
        case DrawMode::CIRCLE: 
            draw_list->AddCircle(mouse, m_drawRadius, IM_COL32(255, 0, 0, 255), 64);
            if (ImGui::IsMouseDown(ImGuiMouseButton_Left)) {
                m_simulation->placeCellsCircle((u16)mouse.x, (u16)mouse.y, m_drawRadius, 1);
            } else if (ImGui::IsMouseDown(ImGuiMouseButton_Right)) {
                m_simulation->placeCellsCircle((u16)mouse.x, (u16)mouse.y, m_drawRadius, 0);
            }
            break;
        case DrawMode::STENCIL:
            const size_t half_width = m_currentAnimal->m_info.m_w * m_scale / 2;
            const size_t half_height = m_currentAnimal->m_info.m_h * m_scale / 2;
            const ImVec2 tex_start = ImVec2{mouse.x - half_width, mouse.y - half_height};
            const ImVec2 tex_stop = ImVec2{mouse.x + half_width, mouse.y + half_height};
            draw_list->AddImage((ImTextureID)(intptr_t)m_currentAnimal->m_cellTexture, tex_start, tex_stop); 
            if (ImGui::IsMouseClicked(ImGuiMouseButton_Left)) {
                m_simulation->placeCells(m_currentAnimal->getCells(), m_currentAnimal->m_info.m_w, m_currentAnimal->m_info.m_h, (u32)tex_start.x, (u32)tex_start.y);
            }
            break;
    }
}

void Lenia::Engine::applyColorPalette(const ColorPalette& colorPalette) noexcept {
    (*m_colorBuffer)[0] = colorPalette;
    m_colorBuffer->storeDataInShader();
}



std::string Lenia::loadShaderFile(const std::string& name) {
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


void Lenia::checkShaderCompilation(GLuint shader) {
    GLint success;
    glGetShaderiv(shader, GL_COMPILE_STATUS, &success);
    if (!success) {
        char infoLog[512];
        glGetShaderInfoLog(shader, 512, NULL, infoLog);
        std::cerr << "ERROR: Shader Compilation Failed\n" << infoLog << std::endl;
    }
}

void Lenia::checkProgramLinking(GLuint program) {
    GLint success;
    glGetProgramiv(program, GL_LINK_STATUS, &success);
    if (!success) {
        char infoLog[512];
        glGetProgramInfoLog(program, 512, NULL, infoLog);
        std::cerr << "ERROR: Program Linking Failed\n%s\n" << infoLog << std::endl;
    }
}

GLuint Lenia::createShader(const GLenum shaderType, const char* shaderCode) {
    GLuint shader = glCreateShader(shaderType);
    glShaderSource(shader, 1, &shaderCode, NULL);
    glCompileShader(shader);
    checkShaderCompilation(shader);
    return shader;
}


void Lenia::createTexture(GLuint *texture, const f32* data, const size_t width, const size_t height, const GLint swizzle_mask[4]) noexcept {
    glGenTextures(1, texture);
	glBindTexture(GL_TEXTURE_2D, *texture);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_R8, width, height, 0, GL_RED, GL_FLOAT, data);
	glTexParameteriv(GL_TEXTURE_2D, GL_TEXTURE_SWIZZLE_RGBA, swizzle_mask);	
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glBindTexture(GL_TEXTURE_2D, 0);
}

void Lenia::createTexture(GLuint *texture, const size_t width, const size_t height) noexcept {
    glGenTextures(1, texture);
	glBindTexture(GL_TEXTURE_2D, *texture);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA32F, width, height, 0, GL_RGBA, GL_FLOAT, nullptr);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glBindTexture(GL_TEXTURE_2D, 0);
}

void Lenia::dumpArrayToFile(const std::vector<f32> &buffer, i32 w, i32 h, const std::string &name) {
	std::ofstream out(name);
	out << w << " " << h << "\n";
	for (const auto& num : buffer)
		out << std::setprecision(2) << num << " ";
	out.close();
}