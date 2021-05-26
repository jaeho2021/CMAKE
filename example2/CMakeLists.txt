cmake_minimum_required(VERSION 3.10)

# set the project name
project(Tutorial)
SET ( CMAKE_VERBOSE_MAKEFILE true )

SET ( MAJOR 1 )	# MAJOR 변수에 1 할당
SET ( MINOR 1 )	# MINOR 변수에 1 할당
# TutorialConfig.h.in 파일이 추후 ${CMAKE_SOURCE_DIR}/include 경로에 TutorialConfig.h 파일로 변경
configure_file(TutorialConfig.h.in "${CMAKE_SOURCE_DIR}/include/TutorialConfig.h")

# add the executable
add_executable(Tutorial tutorial.cc) # toturial.cc 파일을 빌드해서 Tutorial 실행파일 생성

message(${PROJECT_BINARY_DIR})   # 변수 출력: CMakeLists.txt 경로의 build 폴더

target_include_directories(Tutorial PUBLIC	# 빌드에 필요한 header 파일 포함
			"${CMAKE_SOURCE_DIR}/include"
			)

