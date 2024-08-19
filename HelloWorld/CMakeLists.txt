# CMakeLists.txt
cmake_minimum_required(VERSION 3.10)
project(HelloWorld C)

# C 표준 설정
set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED True)

# 리스트 정의
set(MY_LIST "item1" "item2" "item3")

# 리스트의 항목을 하나의 문자열로 결합
list(JOIN MY_LIST "," joined_list)

# 결합된 문자열 출력
message(STATUS "Joined list: ${joined_list}")

set(MY_OPTION "default_value" CACHE STRING "Description of MY_OPTION")

set(kconfig_fragment "kconfig_fragment.txt")
set(prefix "CONFIG_")

file(
    STRINGS ${kconfig_fragment}
    DOT_CONFIG_LIST
    REGEX "^${prefix}"
    ENCODING "UTF-8"
)

foreach(line ${DOT_CONFIG_LIST})
    message(STATUS "Line: ${line}")
endforeach()

# 실행 파일 생성
add_executable(HelloWorld main.c)
