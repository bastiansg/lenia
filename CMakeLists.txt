cmake_minimum_required(VERSION 3.16)
project(Lenia)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(${PROJECT_SOURCE_DIR}/include)

file(GLOB_RECURSE SOURCES 
    ${PROJECT_SOURCE_DIR}/source/*.cpp
    ${PROJECT_SOURCE_DIR}/source/*.c
)

add_executable(lenia ${SOURCES})
target_compile_options(lenia PRIVATE -Ofast -mavx512f -Wall -Wextra)
target_link_libraries(lenia -lgdi32 ${PROJECT_SOURCE_DIR}/lib/libglfw3.a)

add_executable(leniadb ${SOURCES})
target_compile_options(leniadb PRIVATE -Og -g -Wall -Wextra)
target_link_libraries(leniadb -lgdi32 ${PROJECT_SOURCE_DIR}/lib/libglfw3.a)

set(CMAKE_CXX_COMPILER "g++")

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Choose the build type." FORCE)
endif()
