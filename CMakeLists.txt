cmake_minimum_required(VERSION 3.24)
cmake_policy(VERSION 3.24)


project(Lenia LANGUAGES CUDA CXX C)


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
set(CMAKE_CUDA_ARCHITECTURES 89)

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

add_library(cuda_fft_impl ${KERNELS})
target_link_libraries(cuda_fft_impl PRIVATE
    glfw
    glm
    cufft
)

target_compile_options(cuda_fft_impl PRIVATE
    -Xcompiler "/arch:AVX512"
    -I"C:\\Users\\damix\\Documents\\GitHub\\Lenia\\source"
)


add_executable(lenia ${SOURCES})
target_compile_options(lenia PRIVATE
    $<$<CXX_COMPILER_ID:MSVC>:/O2 /arch:AVX512 /W4>
    $<$<CXX_COMPILER_ID:gcc>:-Ofast -mavx512f -march=native -Wall -Wextra -Werror -funroll-loops>
)
target_link_libraries(lenia PRIVATE 
    glfw
    glm
    cuda_fft_impl
)

add_executable(leniadb ${SOURCES})
target_compile_options(leniadb PRIVATE
    $<$<CXX_COMPILER_ID:MSVC>:/Zi /Od /W4>
    $<$<CXX_COMPILER_ID:gcc>:-g -fno-inline -Wall -Wextra>
)
target_link_libraries(leniadb PRIVATE 
    glfw
    glm
    cuda_fft_impl
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