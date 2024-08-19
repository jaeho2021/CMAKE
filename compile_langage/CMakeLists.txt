cmake_minimum_required(VERSION 3.10)
project(CustomCommandExample)

# main.c와 main.cpp 파일을 컴파일하여 main 실행 파일을 생성합니다.
add_executable(main main.c main.cpp)

# C 언어 파일에만 특정 컴파일 옵션을 적용합니다.
target_compile_options(main PRIVATE $<$<COMPILE_LANGUAGE:C>:-DONLY_C_FILE>)

# C++ 언어 파일에만 특정 컴파일 옵션을 적용합니다.
target_compile_options(main PRIVATE $<$<COMPILE_LANGUAGE:CXX>:-DONLY_CPP_FILE>)