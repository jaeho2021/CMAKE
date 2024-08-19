cmake_minimum_required(VERSION 3.0)
project(TwoDimensionalArrayExample)

# 2차원 배열 초기화
set(row1 "1 2 3")
set(row2 "4 5 6")
set(row3 "7 8 9")

# 2차원 배열을 딕셔너리처럼 저장
set(matrix_row_1 "${row1}")
set(matrix_row_2 "${row2}")
set(matrix_row_3 "${row3}")

# 행과 열의 개수
set(num_rows 3)
set(num_cols 3)

# 2차원 배열 출력 함수
function(print_matrix)
    foreach(i RANGE 1 ${num_rows})
        string(CONCAT row_name "matrix_row_" ${i})
        message("${row_name}: ${${row_name}}")
    endforeach()
endfunction()

# 2차원 배열 출력
print_matrix()

# 특정 요소 접근 (예: 2행 3열의 요소)
set(row_index 2)
set(col_index 3)

# CMake의 리스트 인덱스는 0부터 시작하므로, col_index를 1 감소시킴
math(EXPR col_index "${col_index} - 1")

# 행 이름 생성
string(CONCAT row_name "matrix_row_${row_index}")

# 리스트 길이 확인
list(LENGTH ${row_name} row_length)

# 인덱스가 범위를 벗어나지 않도록 확인
if(${col_index} LESS ${row_length} AND ${col_index} GREATER_EQUAL 0)
    list(GET ${row_name} ${col_index} element)
    message("Element at (${row_index}, ${col_index}): ${element}")
else()
    message(FATAL_ERROR "Index ${col_index} out of range for row ${row_name} with length ${row_length}")
endif()