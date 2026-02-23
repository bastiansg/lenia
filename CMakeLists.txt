cmake_minimum_required(VERSION 3.24)
cmake_policy(VERSION 3.24)


set(CMAKE_CUDA_FLAGS_INIT "--allow-unsupported-compiler")

project(Lenia LANGUAGES CUDA CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)

set(GLM_ENABLE_SIMD_AVX2 ON)
set(GLM_ENABLE_CXX_20 ON)
set(GLM_ENABLE_FAST_MATH ON)
set(GLM_ENABLE_LANG_EXTENSIONS ON)

set(GLFW_LIBRARY_TYPE STATIC)

set(CMAKE_CUDA_SEPARABLE_COMPILATION ON)

add_compile_definitions(NOMINMAX)

set(CMAKE_CUDA_ARCHITECTURES 89)

set(CMAKE_CUDA_SEPARABLE_COMPILATION ON)
SET(CMAKE_CUDA_RESOLVE_DEVICE_SYMBOLS ON)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build)

add_subdirectory(${PROJECT_SOURCE_DIR}/source/glfw)
add_subdirectory(${PROJECT_SOURCE_DIR}/source/glm)

include_directories(${PROJECT_SOURCE_DIR}/source/stb)
include_directories(${PROJECT_SOURCE_DIR}/source/imgui)
include_directories(${PROJECT_SOURCE_DIR}/source/imgui/backends)
include_directories(${PROJECT_SOURCE_DIR}/source/glad)

file(GLOB SOURCES
    ${PROJECT_SOURCE_DIR}/source/lenia/*.cpp
    ${PROJECT_SOURCE_DIR}/source/glad/glad.c
    ${PROJECT_SOURCE_DIR}/source/imgui/*.cpp
    ${PROJECT_SOURCE_DIR}/source/imgui/backends/imgui_impl_glfw.cpp
    ${PROJECT_SOURCE_DIR}/source/imgui/backends/imgui_impl_opengl3.cpp
)

file(GLOB KERNELS
    ${PROJECT_SOURCE_DIR}/source/lenia/*.cu
)

file(GLOB TEST_SOURCES
    ${PROJECT_SOURCE_DIR}/test/*.cpp
)

add_executable(lenia ${SOURCES} ${KERNELS})
target_include_directories(lenia PRIVATE ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES})
target_compile_options(lenia PRIVATE
    $<$<COMPILE_LANGUAGE:CXX>:
    $<$<AND:$<CXX_COMPILER_ID:MSVC>,$<CONFIG:Release>>:/O2 /arch:AVX512 /W2 /MP /GL /Zc:preprocessor>
    $<$<AND:$<CXX_COMPILER_ID:MSVC>,$<NOT:$<CONFIG:Release>>>:/Od /arch:AVX512 /W2 /MP /Zc:preprocessor>
    $<$<CXX_COMPILER_ID:GNU>:-Ofast -march=native -Wall -Wextra -Werror -funroll-loops>
    >
    $<$<COMPILE_LANGUAGE:CUDA>:
    -Xcompiler="-arch:AVX512 -Zc:preprocessor"
    -std=c++20
    --extended-lambda
    -diag-suppress 221,20012
    --ptxas-options="-O3"
    >
)
target_link_libraries(lenia
    cufft
    glfw
    glm
)
set(CMAKE_RC_COMPILER= "C:/Program Files (x86)/Windows Kits/10/bin/10.0.26100.0/x64/rc.exe")

add_executable(leniadb ${SOURCES} ${KERNELS})
target_include_directories(leniadb PRIVATE ${CMAKE_CUDA_TOOLKIT_INCLUDE_DIRECTORIES})
target_compile_options(leniadb PRIVATE
    $<$<COMPILE_LANGUAGE:CXX>:
    $<$<CXX_COMPILER_ID:MSVC>:/Od /arch:AVX512 /W0 /MP>
    $<$<CXX_COMPILER_ID:GNU>:-Og -march=native -Wall -Wextra>
    >
    $<$<COMPILE_LANGUAGE:CUDA>:
    -Xcompiler="/arch:AVX512"
    -std=c++20
    --extended-lambda
    -diag-suppress 221,20012
    >
)
target_link_libraries(leniadb PRIVATE
    glfw
    glm
    cufft
)

if(NOT MSVC)
    target_link_libraries(lenia -lgdi32)
    target_link_libraries(leniadb -lgdi32)
    add_custom_command(TARGET lenia POST_BUILD
        COMMAND strip lenia.exe
        WORKING_DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}
        COMMENT "Running 'strip lenia.exe'..."
    )
    add_custom_target(assembly ALL COMMENT "Generating assembly for all source files")

    foreach(SOURCE_FILE ${SOURCES})
        get_filename_component(FILE_NAME ${SOURCE_FILE} NAME_WE)
        add_custom_command(
            OUTPUT ${PROJECT_BINARY_DIR}/assembly/${FILE_NAME}.s
            COMMAND ${CMAKE_COMMAND} -E make_directory ${PROJECT_BINARY_DIR}/assembly
            COMMAND ${CMAKE_CXX_COMPILER} -S -Ofast -mavx512f -Wall -Wextra -fverbose-asm -masm=intel
            -I${PROJECT_SOURCE_DIR}/source/stb -I${PROJECT_SOURCE_DIR}/source/imgui
            -I${PROJECT_SOURCE_DIR}/source/imgui/backends -I${PROJECT_SOURCE_DIR}/source/glad
            -I${PROJECT_SOURCE_DIR}/source/glfw/include -I${PROJECT_SOURCE_DIR}/source/glm
            ${SOURCE_FILE} -o ${PROJECT_BINARY_DIR}/assembly/${FILE_NAME}.s
            DEPENDS ${SOURCE_FILE}
            COMMENT "Generating assembly for ${FILE_NAME}"
        )
        add_custom_target(${FILE_NAME}_asm DEPENDS ${PROJECT_BINARY_DIR}/assembly/${FILE_NAME}.s)
        add_dependencies(assembly ${FILE_NAME}_asm)
    endforeach()

    add_custom_target(disassemble
        COMMAND ${CMAKE_COMMAND} -E echo "Disassembling the executable..."
        COMMAND objdump -dC ${CMAKE_BINARY_DIR}/lenia.exe > ${CMAKE_BINARY_DIR}/lenia.asm
        DEPENDS lenia
        COMMENT "Generating assembly for the fully linked executable"
    )
endif()

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

enable_testing()
add_subdirectory(test/googletest)

include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

add_executable(leniatest
    ${TEST_SOURCES}
)
target_link_libraries(
    leniatest
    gtest
    gtest_main
)

add_test(NAME MyTest COMMAND leniatest)