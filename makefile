CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra
OFLAGS = -mavx512f -O3
DBFLAGS = -g
ASMFLAGS = -S -masm=intel -fverbose-asm


INCLUDES = -Iinclude

LIBS = -Llib lib/libglfw3.a -lgdi32

SOURCES = source/glad.c source/animal.cpp source/main.cpp source/simulation.cpp

OBJECTS = $(SOURCES:.cpp=.o)

TARGET = lenia.exe
DBTARGET = leniadb.exe
ASMTARGET = lenia.asm

all: $(TARGET)
$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(OFLAGS) $(SOURCES) $(INCLUDES) $(LIBS) -o $(TARGET)

debug: $(DBTARGET)
$(DBTARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(DBFLAGS)  $(SOURCES) $(INCLUDES) $(LIBS) -o $(DBTARGET)

asm: $(ASMTARGET)
$(ASMTARGET): $(SOURCES)	
	$(CXX) $(CXXFLAGS) $(ASMFLAGS) $(OFLAGS) $(SOURCES) $(INCLUDES) $(LIBS) 


clean:
	del $(TARGET) $(DBTARGET)