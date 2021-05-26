cmake_minimum_required(VERSION 3.20.2)

project(
		LJH								 # Project 이름${CMAKE_PROJECT_NAME}
		VERSION 0.1
		DESCRIPTION "예제 프로젝트"
		LANGUAGES CXX)                   # C++ 사용

add_executable (program main.cc foo.cc)  # main과 foo를 빌드해서 program을 만듦
message("------------")					 # 디버깅 로그 출력
message(${CMAKE_SOURCE_DIR})             # 변수 출력
target_include_directories(program PUBLIC ${CMAKE_SOURCE_DIR}/includes) # main foo를 빌드하기 위해 필요한 header 파일 위치
target_compile_options(program PUBLIC -Wall -Werror) # 빌드 옵션

