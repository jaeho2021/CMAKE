cmake_minimum_required(VERSION 3.10)
project(MyProject)

add_executable(MyApp src/main.cpp)

# install(DIRECTORY data/ DESTINATION share/myapp/data)

# install(DIRECTORY data/ DESTINATION share/myapp/text_files
#         FILES_MATCHING PATTERN "*.txt")

install(DIRECTORY data/ DESTINATION share/myapp/image_files
        FILES_MATCHING PATTERN "*.txt" EXCLUDE)

# install(DIRECTORY data/ DESTINATION share/myapp/text_bmp_files
#         FILES_MATCHING PATTERN "*.txt" PATTERN "*.bmp")