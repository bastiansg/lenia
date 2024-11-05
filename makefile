CXX = g++
CXXFLAGS = -std=c++23
FLAGS = -O3
CXXDBFLAGS = -Og

INCLUDES = -Iinclude

LIBS = -Llib -lopengl32 -lglfw3dll -lgdi32 -luser32

SOURCES = source/glad.c source/animal.cpp source/main.cpp source/simulation.cpp

OBJECTS = $(SOURCES:.cpp=.o)

TARGET = lenia.exe
DBTARGET = leniadb.exe

all: $(TARGET)

$(TARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(FLAGS) $(SOURCES) $(INCLUDES) $(LIBS) -o $(TARGET)

debug: $(DBTARGET)

$(DBTARGET): $(SOURCES)
	$(CXX) $(CXXFLAGS) $(CXXDBFLAGS)  $(SOURCES) $(INCLUDES) $(LIBS) -o $(DBTARGET)

clean:
	rm -f $(TARGET)