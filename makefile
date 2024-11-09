CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra -v
OFLAGS = -Ofast -mavx512f
DBFLAGS = -g -O1 
ASMFLAGS = -S -masm=intel -fverbose-asm
BIN_DIR = bin

INCLUDES = -Iinclude

LIBS = -Llib lib/libglfw3.a -lgdi32

SOURCES = source/glad.c source/animal.cpp source/main.cpp source/simulation.cpp

OBJECTS = $(SOURCES:.cpp=.o)

TARGET = lenia.exe
DBTARGET = leniadb.exe
ASMTARGET = asm/

all: $(TARGET)
$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(OFLAGS) $(SOURCES) $(INCLUDES) $(LIBS) -o $(BIN_DIR)/$(TARGET)

debug: $(DBTARGET)
$(DBTARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(DBFLAGS) $(SOURCES) $(INCLUDES) $(LIBS) -o $(BIN_DIR)/$(DBTARGET)

asm: $(ASMTARGET)
$(ASMTARGET): $(SOURCES)	
	$(CXX) $(CXXFLAGS) $(ASMFLAGS) $(OFLAGS) $(SOURCES) $(INCLUDES) $(LIBS) $(OBJECTS) -o asm/


clean:
	del $(BIN_DIR)/$(TARGET) $(BIN_DIR)/$(DBTARGET)