cmake_minimum_required(VERSION 3.14)
project(MyApp)

# MyLibrary 패키지 찾기
find_package(MyLibrary 1.0.0 REQUIRED)

# 실행 파일 생성
add_executable(MyApp src/main.cpp)

# MyLibrary 링크
target_link_libraries(MyApp PRIVATE MyLibrary11::MyLibrary)
target_link_libraries(MyApp PRIVATE MyLibrary11::MyLibrary_ext)
