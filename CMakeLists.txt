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
target_compile_options(lenia PRIVATE -Ofast -mavx512f -Wall -Wextra -Werror)
target_link_libraries(lenia -lgdi32 ${PROJECT_SOURCE_DIR}/lib/libglfw3.a)

add_executable(leniadb ${SOURCES})
target_compile_options(leniadb PRIVATE -g -fno-inline -Wall -Wextra)
target_link_libraries(leniadb -lgdi32 ${PROJECT_SOURCE_DIR}/lib/libglfw3.a)

set(CMAKE_CXX_COMPILER "g++")

if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Choose the build type." FORCE)
endif()


add_custom_target(assembly ALL COMMENT "Generating assembly for all source files")

foreach(SOURCE_FILE ${SOURCES})
    get_filename_component(FILE_NAME ${SOURCE_FILE} NAME_WE)
    add_custom_command(
        OUTPUT ${PROJECT_BINARY_DIR}/assembly/${FILE_NAME}.s
        COMMAND ${CMAKE_COMMAND} -E make_directory ${PROJECT_BINARY_DIR}/assembly
        COMMAND ${CMAKE_CXX_COMPILER} -S -Ofast -mavx512f -Wall -Wextra -fverbose-asm -masm=intel -I${PROJECT_SOURCE_DIR}/include
            ${SOURCE_FILE} -o ${PROJECT_BINARY_DIR}/assembly/${FILE_NAME}.s
        DEPENDS ${SOURCE_FILE}
        COMMENT "Generating assembly for ${FILE_NAME}"
    )
    add_custom_target(${FILE_NAME}_asm DEPENDS ${PROJECT_BINARY_DIR}/assembly/${FILE_NAME}.s)
    add_dependencies(assembly ${FILE_NAME}_asm)
endforeach()

add_custom_target(disassemble
    COMMAND ${CMAKE_COMMAND} -E echo "Disassembling the executable..."
    COMMAND objdump -dC -M intel ${CMAKE_BINARY_DIR}/lenia.exe > ${CMAKE_BINARY_DIR}/lenia.asm
    DEPENDS lenia
    COMMENT "Generating assembly for the fully linked executable"
)