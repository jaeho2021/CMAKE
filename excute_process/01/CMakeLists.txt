cmake_minimum_required(VERSION 3.10)
project(ExecuteProcessExample)

# 소스 파일 추가
add_executable(MyApp src/main.cpp)

# Python 스크립트 실행
execute_process(
    COMMAND ${CMAKE_COMMAND} -E env python3 ${CMAKE_SOURCE_DIR}/script.py ${CMAKE_SOURCE_DIR}/config.ini
                                    --section PW
                                    --key password
    OUTPUT_VARIABLE script_output
    RESULT_VARIABLE script_result
)

# 결과 출력
message(STATUS "Script output: ${script_output}")
message(STATUS "Script result: ${script_result}")