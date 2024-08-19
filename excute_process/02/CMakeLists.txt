cmake_minimum_required(VERSION 3.10)
project(ExecuteProcessExample)

# 소스 파일 추가
add_executable(MyApp src/main.cpp)

# Python 스크립트 실행
execute_process(COMMAND ${CMAKE_COMMAND} -E env python3 ${CMAKE_SOURCE_DIR}/products.py
        ${CMAKE_SOURCE_DIR}/product.yml
        suffix
        COMMAND tr -d '[],\r\n'
        RESULT_VARIABLE status
        OUTPUT_VARIABLE system_courses
  )

# 결과 출력
message(STATUS "Script output: ${system_courses}")
message(STATUS "Script result: ${status}")
