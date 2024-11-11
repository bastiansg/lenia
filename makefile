CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra -MMD 
OFLAGS = -Ofast -mavx512f -s
DBFLAGS = -Og
ASMFLAGS = -S -masm=intel -fverbose-asm
BIN_DIR = build
OBJ_DIR = $(BIN_DIR)/obj
DEP_DIR = $(BIN_DIR)/deps
ASM_DIR = $(BIN_DIR)/asm

INCLUDES = -Iinclude -Ilib/imgui -Ilib/imgui/backends -Ilib/imgui/misc/cpp

LIBS = lib/libglfw3.a -lgdi32

C_SOURCES = source/glad.c
CPP_LENIA_SOURCES = source/animal.cpp source/main.cpp source/simulation.cpp  
CPP_IMGUI_SOURCES = lib/imgui/imgui_demo.cpp lib/imgui/imgui_draw.cpp lib/imgui/imgui_tables.cpp lib/imgui/imgui_widgets.cpp lib/imgui/imgui.cpp
CPP_IMGUI_BACKEND_SOURCES = lib/imgui/backends/imgui_impl_glfw.cpp lib/imgui/backends/imgui_impl_opengl3.cpp lib/imgui/misc/cpp/imgui_stdlib.cpp

CPP_SOURCES = $(CPP_LENIA_SOURCES) $(CPP_IMGUI_SOURCES) $(CPP_IMGUI_BACKEND_SOURCES)
OBJECTS = $(patsubst %.cpp,$(OBJ_DIR)/%.o,$(notdir $(CPP_SOURCES))) \
          $(patsubst %.c,$(OBJ_DIR)/%.o,$(notdir $(C_SOURCES)))

# $(info ${OBJECTS})

TARGET = $(BIN_DIR)/lenia.exe
DBTARGET = $(BIN_DIR)/leniadb.exe

all: $(TARGET)

$(TARGET): $(OBJECTS) | $(BIN_DIR) $(OBJ_DIR) $(DEP_DIR)
	$(CXX) $(CXXFLAGS) $(OFLAGS) $(OBJECTS) $(INCLUDES) $(LIBS) -o $(TARGET)

debug: $(DBTARGET)

$(DBTARGET): $(OBJECTS) | $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(DBFLAGS) $(OBJECTS) $(INCLUDES) $(LIBS) -o $(DBTARGET)

assembly: $(ASM_DIR) $(CPP_SOURCES)
	if not exist $(ASM_DIR) mkdir $(ASM_DIR)
	$(CXX) $(CXXFLAGS) $(ASMFLAGS) $(OFLAGS) $(INCLUDES) $(LIBS) $(CPP_SOURCES)
	move *.s $(ASM_DIR)

$(OBJ_DIR)/%.o:  | $(OBJ_DIR) $(DEP_DIR)
	@echo Compiling $<
	@$(CXX) $(CXXFLAGS) $(OFLAGS) $(INCLUDES) -MF $(DEP_DIR)/$(notdir $(@:.o=.d)) -c $< -o $@

$(OBJ_DIR)/%.o: % | $(OBJ_DIR) $(DEP_DIR)
	@echo Compiling $<
	@$(CXX) $(CXXFLAGS) $(OFLAGS) $(INCLUDES) -MF $(DEP_DIR)/$(notdir $(@:.o=.d)) -c $< -o $@


-include $(patsubst %.cpp,$(DEP_DIR)/%.d,$(CPP_SOURCES))
-include $(patsubst %.c,$(DEP_DIR)/%.d,$(C_SOURCES))


$(BIN_DIR):
	if not exist $(BIN_DIR) mkdir $(BIN_DIR)

$(OBJ_DIR):
	if not exist $(OBJ_DIR) mkdir $(OBJ_DIR)

$(DEP_DIR):
	if not exist $(DEP_DIR) mkdir $(DEP_DIR)


clean:
	if exist $(BIN_DIR)/lenia.exe del $(BIN_DIR)/lenia.exe
	if exist $(BIN_DIR)/leniadb.exe del $(BIN_DIR)/leniadb.exe
	if exist $(ASMTARGET) del /Q /F $(ASMTARGET)
	if exist $(OBJ_DIR) del /Q /F $(OBJ_DIR)
	if exist $(DEP_DIR) del /Q /F $(DEP_DIR)
