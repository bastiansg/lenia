cmake_minimum_required(VERSION 3.16)
project(Lenia)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(${PROJECT_SOURCE_DIR}/include)

file(GLOB_RECURSE SOURCES 
    ${PROJECT_SOURCE_DIR}/source/*.cpp
    ${PROJECT_SOURCE_DIR}/source/*.c
    ${PROJECT_SOURCE_DIR}/source/imgui/*.cpp
    ${PROJECT_SOURCE_DIR}/source/core/*.cpp
)
add_executable(lenia ${SOURCES})


target_compile_options(lenia PRIVATE 
    $<$<CONFIG:DEBUG>:-0g>
    $<$<CONFIG:RELEASE>:-Ofast -mavx512f -s>
)

target_compile_options(lenia PRIVATE -Wall -Wextra)

target_link_libraries(lenia -lgdi32)
target_link_libraries(lenia ${PROJECT_SOURCE_DIR}/lib/libglfw3.a)


set(CMAKE_CXX_COMPILER "g++")


if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Choose the build type." FORCE)
endif()

# Enable debugging symbols for Debug configuration
set_target_properties(lenia PROPERTIES
    CXX_STANDARD 23
    CXX_STANDARD_REQUIRED ON
)