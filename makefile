CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra
OFLAGS = -01
DBFLAGS = -g 
ASMFLAGS = -S -masm=intel -fverbose-asm
BIN_DIR = bin

INCLUDES = -Iinclude

LIBS = -Llib lib/libglfw3.a -lgdi32

SOURCES = source/glad.c source/animal.cpp source/main.cpp source/simulation.cpp

OBJECTS = $(SOURCES:.cpp=.o)

TARGET = lenia.exe
DBTARGET = leniadb.exe

all: $(TARGET)
$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(OFLAGS) $(SOURCES) $(INCLUDES) $(LIBS) -o $(BIN_DIR)/$(TARGET)

debug: $(DBTARGET)
$(DBTARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(DBFLAGS)  $(SOURCES) $(INCLUDES) $(LIBS) -o $(BIN_DIR)/$(DBTARGET)

asm: $(ASMTARGET)
$(ASMTARGET): $(SOURCES)	
	$(CXX) $(CXXFLAGS) $(ASMFLAGS) $(OFLAGS) $(SOURCES) $(INCLUDES) $(LIBS) -o /asm


clean:
	del bin/$(TARGET) bin/$(DBTARGET)