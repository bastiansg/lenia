cmake_minimum_required(VERSION 3.10)
project(Lenia)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(source/glfw) 
add_subdirectory(source/glm) 

include_directories(source/stb)
include_directories(source/imgui)
include_directories(source/imgui/backends)
include_directories(source/glad)

file(GLOB SOURCES 
    ${PROJECT_SOURCE_DIR}/source/lenia/*.cpp
    ${PROJECT_SOURCE_DIR}/source/glad/glad.c
    ${PROJECT_SOURCE_DIR}/source/imgui/*.cpp
    ${PROJECT_SOURCE_DIR}/source/imgui/backends/imgui_impl_glfw.cpp
    ${PROJECT_SOURCE_DIR}/source/imgui/backends/imgui_impl_opengl3.cpp
)

set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)

set(GLM_ENABLE_SIMD_AVX2 ON)
set(GLM_ENABLE_CXX_20 ON)
set(GLM_ENABLE_FAST_MATH ON)

set(GLFW_LIBRARY_TYPE STATIC)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build)

add_executable(lenia ${SOURCES})
target_compile_options(lenia PRIVATE
    $<$<CXX_COMPILER_ID:MSVC>:/O2 /arch:AVX512 /W4>
    $<$<NOT:$<CXX_COMPILER_ID:MSVC>>:-Ofast -mavx512f -Wall -Wextra -Werror -finline-functions -fearly-inlining>
)
target_link_libraries(lenia PRIVATE 
    -lgdi32
    glfw
    glm
)

add_executable(leniadb ${SOURCES})
target_compile_options(leniadb PRIVATE
    $<$<CXX_COMPILER_ID:MSVC>:/Zi /Od /W4>
    $<$<NOT:$<CXX_COMPILER_ID:MSVC>>:-g -fno-inline -Wall -Wextra>
)
target_link_libraries(leniadb PRIVATE 
    -lgdi32
    glfw
    glm
)

# if(NOT MSVC) 
    add_custom_command(TARGET lenia POST_BUILD
        COMMAND strip lenia.exe
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        COMMENT "Running 'strip lenia.exe'..."
    )
    add_custom_target(assembly ALL COMMENT "Generating assembly for all source files")

#     foreach(SOURCE_FILE ${SOURCES})
#         get_filename_component(FILE_NAME ${SOURCE_FILE} NAME_WE)
#         add_custom_command(
#             OUTPUT ${PROJECT_BINARY_DIR}/assembly/${FILE_NAME}.s
#             COMMAND ${CMAKE_COMMAND} -E make_directory ${PROJECT_BINARY_DIR}/assembly
#             COMMAND ${CMAKE_CXX_COMPILER} -S -Ofast -mavx512f -Wall -Wextra -fverbose-asm -masm=intel -I${PROJECT_SOURCE_DIR}/include
#                     ${SOURCE_FILE} -o ${PROJECT_BINARY_DIR}/assembly/${FILE_NAME}.s
#             DEPENDS ${SOURCE_FILE}
#             COMMENT "Generating assembly for ${FILE_NAME}"
#         )
#         add_custom_target(${FILE_NAME}_asm DEPENDS ${PROJECT_BINARY_DIR}/assembly/${FILE_NAME}.s)
#         add_dependencies(assembly ${FILE_NAME}_asm)
#     endforeach()
    
    add_custom_target(disassemble
        COMMAND ${CMAKE_COMMAND} -E echo "Disassembling the executable..."
        COMMAND objdump -dC -M intel ${CMAKE_BINARY_DIR}/lenia.exe > ${CMAKE_BINARY_DIR}/lenia.asm
        DEPENDS lenia
        COMMENT "Generating assembly for the fully linked executable"
    )
# endif()
