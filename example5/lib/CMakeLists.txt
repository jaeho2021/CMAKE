add_library(shape STATIC shape.cpp)

#add_definitions(-DUSE_THREAD)

target_include_directories(shape PUBLIC ${CMAKE_SOURCE_DIR}/include)

target_compile_options(shape PRIVATE -Wall -Werror -std=c++11 )

OPTION (BUILD_USE_THREAD "USE Thread" OFF)

if( BUILD_USE_THREAD )
	target_link_libraries(shape PUBLIC pthread)
endif()
