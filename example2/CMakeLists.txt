cmake_minimum_required(VERSION 3.10)

# set the project name
project(Tutorial)
SET ( CMAKE_VERBOSE_MAKEFILE true )

SET ( MAJOR 1 )
SET ( MINOR 1 )
configure_file(TutorialConfig.h.in "${CMAKE_SOURCE_DIR}/include/TutorialConfig.h")

# add the executable
add_executable(Tutorial tutorial.cc)

message(${PROJECT_BINARY_DIR})

target_include_directories(Tutorial PUBLIC
			"${CMAKE_SOURCE_DIR}/include"
			)

