cmake_minimum_required(VERSION 3.10)
project(MyProject)

# 인터페이스 라이브러리 생성
add_library(my_library INTERFACE)

# 인터페이스 라이브러리에 컴파일러 옵션 설정
target_compile_options(my_library INTERFACE -Wall -Wextra -Werror)

# 실행 파일 타겟 생성
add_executable(my_executable main.cpp)

# my_executable 타겟이 my_library를 링크하도록 설정
target_link_libraries(my_executable PRIVATE my_library)
