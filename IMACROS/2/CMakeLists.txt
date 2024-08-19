cmake_minimum_required(VERSION 3.10)
project(ExampleProject)

add_custom_target(compiler)
add_custom_target(compiler-cpp)

include(${CMAKE_SOURCE_DIR}/cmake/compiler.cmake)

add_executable(main main.c)

# -imacros 옵션을 추가하여 macros.h 파일을 포함시킵니다.
target_compile_options(main PRIVATE -imacros ${CMAKE_SOURCE_DIR}/macros.h)

set_compiler_property(PROPERTY imacros -imacros)

add_custom_command(
    OUTPUT output_file
    COMMAND ${CMAKE_COMMAND} -E echo "Property: $<TARGET_PROPERTY:compiler,imacros>" > output_file
    DEPENDS compiler
)

add_custom_target(print_properties ALL DEPENDS output_file)