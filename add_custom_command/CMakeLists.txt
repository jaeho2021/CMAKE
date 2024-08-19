cmake_minimum_required(VERSION 3.10)
project(CustomCommandExample)

# main.c 파일을 컴파일하여 main 실행 파일을 생성합니다.
add_executable(main main.c)

# 빌드 전, 링크 전, 빌드 후에 명령어를 실행합니다.
add_custom_command(
    TARGET main
    PRE_BUILD
    COMMAND ${CMAKE_COMMAND} -E echo "This is executed before the build."
)

add_custom_command(
    TARGET main
    PRE_LINK
    COMMAND ${CMAKE_COMMAND} -E echo "This is executed before linking."
)

add_custom_command(
    TARGET main
    POST_BUILD
    COMMAND ${CMAKE_COMMAND} -E echo "This is executed after the build."
)
