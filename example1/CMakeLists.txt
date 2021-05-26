cmake_minimum_required(VERSION 3.20.2)


project(
		LJH
		VERSION 0.1
		DESCRIPTION "예제 프로젝트"
		LANGUAGES CXX)

add_executable (program main.cc foo.cc)
message("------------")
message(${CMAKE_SOURCE_DIR})
target_include_directories(program PUBLIC ${CMAKE_SOURCE_DIR}/includes)
target_compile_options(program PUBLIC -Wall -Werror)

