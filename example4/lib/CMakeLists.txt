add_library(shape STATIC shape.cpp)

target_include_directories(shape PUBLIC ${CMAKE_SOURCE_DIR}/include)

target_compile_options(shape PRIVATE -Wall -Werror -std=c++11)

target_link_libraries(shape PUBLIC pthread)
