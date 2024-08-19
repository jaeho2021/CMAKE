# CMakeLists.txt

set(A "test")
set(B "test")

cmake_minimum_required(VERSION 3.10)
project(GeneratorExpressionExample)

# 실행 파일 타겟 정의
add_executable(my_executable ${CMAKE_SOURCE_DIR}/src/main.cpp ${CMAKE_SOURCE_DIR}/src/my_header.cpp)

# 항상 포함 디렉토리 추가
target_include_directories(my_executable PRIVATE
    #$<1:${CMAKE_SOURCE_DIR}/include>
    $<$<STREQUAL:${A},${B}>:${CMAKE_SOURCE_DIR}/include>
)

target_compile_options(my_executable PRIVATE
    $<$<CONFIG:Debug>:-DDEBUG>)