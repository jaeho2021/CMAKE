cmake_minimum_required(VERSION 3.14)
project(MyApp)

# 원본 경로 문자열
set(PATH "aa/a1")

# '/'를 기준으로 문자열을 분리하여 리스트로 저장
string(REPLACE "/" ";" PATH_LIST ${PATH})

# 첫 번째 요소를 추출
list(GET PATH_LIST 0 FIRST_DIR)
list(GET PATH_LIST 1 SECOND_DIR)

# 결과 출력
message(STATUS "First directory: ${FIRST_DIR}")
message(STATUS "Second directory: ${SECOND_DIR}")
