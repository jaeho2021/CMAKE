# CMake 프로그램의 최소 버전
cmake_minimum_required(VERSION 3.11)

# 프로젝트 정보
project(
		LJH
		VERSION 0.1
		DESCRIPTION "예제 프로젝트"
		LANGUAGES CXX)

add_subdirectory(lib)

add_executable (program main.cpp)

target_link_libraries(program shape)

message(${CMAKE_PROJECT_NAME})
