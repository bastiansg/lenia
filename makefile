CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra
OFLAGS = -Ofast -mavx512f -s
DBFLAGS = -Og
ASMFLAGS = -S -masm=intel -fverbose-asm
BIN_DIR = bin
ASMTARGET = asm

INCLUDES = -Iinclude

LIBS = -Llib lib/libglfw3.a -lgdi32

SOURCES = source/glad.c source/animal.cpp source/main.cpp source/simulation.cpp
CPP_SOURCES = $(filter %.cpp,$(SOURCES))
OBJECTS = $(CPP_SOURCES:.cpp=.o) $(filter %.c,$(SOURCES):.c=.o)

TARGET = lenia.exe
DBTARGET = leniadb.exe

all: $(TARGET)

$(TARGET): $(SOURCES) | $(BIN_DIR)
	if not exist $(BIN_DIR) mkdir $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(OFLAGS) $(SOURCES) $(INCLUDES) $(LIBS) -o $(BIN_DIR)\$(TARGET)

debug: $(DBTARGET)

$(DBTARGET): $(SOURCES) | $(BIN_DIR)
	if not exist $(BIN_DIR) mkdir $(BIN_DIR)
	$(CXX) $(CXXFLAGS) $(DBFLAGS) $(SOURCES) $(INCLUDES) $(LIBS) -o $(BIN_DIR)\$(DBTARGET)

assembly: $(ASMTARGET) $(CPP_SOURCES)
	if not exist $(ASMTARGET) mkdir $(ASMTARGET)
	$(CXX) $(CXXFLAGS) $(ASMFLAGS) $(OFLAGS) $(INCLUDES) $(LIBS) $(CPP_SOURCES)
	move *.s $(ASMTARGET)

clean:
	if exist $(BIN_DIR)\$(TARGET) del $(BIN_DIR)\$(TARGET)
	if exist $(BIN_DIR)\$(DBTARGET) del $(BIN_DIR)\$(DBTARGET)
	if exist $(ASMTARGET) del /Q /F $(ASMTARGET)\*.s

$(BIN_DIR):
	if not exist $(BIN_DIR) mkdir $(BIN_DIR)
