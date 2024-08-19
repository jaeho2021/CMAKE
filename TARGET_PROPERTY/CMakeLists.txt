# CMakeLists.txt

cmake_minimum_required(VERSION 3.10)

project(TargetPropertyExample)

add_library(my_library src/my_library.cpp)

target_include_directories(my_library PUBLIC
    ${CMAKE_SOURCE_DIR}/include
)

#add_library(a_library src/a.cpp)
# target_include_directories(a_library PUBLIC
#     ${CMAKE_SOURCE_DIR}/a
# )
add_library(a_library INTERFACE)
target_include_directories(a_library INTERFACE
    ${CMAKE_SOURCE_DIR}/a
)

add_executable(my_executable src/main.cpp)

target_link_libraries(my_executable PRIVATE my_library)

get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES)
message(${my_library_directory})

get_target_property(my_executable_lang my_executable COMPILE_LANGUAGE)

# target_include_directories(my_executable PRIVATE
#     $<TARGET_PROPERTY:a_library,INCLUDE_DIRECTORIES>
# )
target_include_directories(my_executable PRIVATE
    $<TARGET_PROPERTY:a_library,INTERFACE_INCLUDE_DIRECTORIES>
)


# 설명
# CMake에서 $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>와 get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES)는 모두 타겟의 속성을 참조하는 방법이지만, 사용되는 상황과 방식이 다릅니다.

# $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>
# 이 표현식은 CMake의 Generator Expressions 중 하나로, 빌드 시스템이 생성될 때 평가됩니다. 주로 target_include_directories, target_compile_options 등과 같은 명령어 내에서 조건부 설정을 위해 사용됩니다.

# 예제
# Language:
# # CMakeLists.txt

# cmake_minimum_required(VERSION 3.10)
# project(TargetPropertyExample)

# # 라이브러리 타겟 정의
# add_library(my_library src/my_library.cpp)

# # 라이브러리 타겟에 포함 디렉토리 추가
# target_include_directories(my_library PUBLIC
#     ${CMAKE_SOURCE_DIR}/include
# )

# # 실행 파일 타겟 정의
# add_executable(my_executable src/main.cpp)

# # 실행 파일 타겟에 라이브러리 링크
# target_link_libraries(my_executable PRIVATE my_library)

# # 실행 파일 타겟에 라이브러리의 포함 디렉토리 추가
# target_include_directories(my_executable PRIVATE
#     $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>
# )
# 이 예제에서 $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>는 my_library 타겟의 INCLUDE_DIRECTORIES 속성을 참조하여 my_executable 타겟에 포함 디렉토리를 추가합니다. 이 표현식은 빌드 시스템이 생성될 때 평가됩니다.

# get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES)
# 이 명령어는 CMake 스크립트가 실행될 때 평가됩니다. 특정 타겟의 속성을 변수에 저장할 때 사용됩니다. 주로 CMakeLists.txt 파일 내에서 조건부 로직을 구현하거나, 타겟 속성을 참조할 때 사용됩니다.

# 예제
# Language:
# # CMakeLists.txt

# cmake_minimum_required(VERSION 3.10)
# project(TargetPropertyExample)

# # 라이브러리 타겟 정의
# add_library(my_library src/my_library.cpp)

# # 라이브러리 타겟에 포함 디렉토리 추가
# target_include_directories(my_library PUBLIC
#     ${CMAKE_SOURCE_DIR}/include
# )

# # 타겟 속성 가져오기
# get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES)

# # 실행 파일 타겟 정의
# add_executable(my_executable src/main.cpp)

# # 실행 파일 타겟에 라이브러리 링크
# target_link_libraries(my_executable PRIVATE my_library)

# # 실행 파일 타겟에 라이브러리의 포함 디렉토리 추가
# target_include_directories(my_executable PRIVATE
#     ${my_library_directory}
# )
# 이 예제에서 get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES)는 my_library 타겟의 INCLUDE_DIRECTORIES 속성을 my_library_directory 변수에 저장합니다. 그런 다음, 이 변수를 사용하여 my_executable 타겟에 포함 디렉토리를 추가합니다.

# 차이점 요약
# 평가 시점:

# $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>: 빌드 시스템이 생성될 때 평가됩니다.
# get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES): CMake 스크립트가 실행될 때 평가됩니다.
# 사용 상황:

# $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>: 주로 target_include_directories, target_compile_options 등과 같은 명령어 내에서 조건부 설정을 위해 사용됩니다.
# get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES): 특정 타겟의 속성을 변수에 저장하고, 이를 조건부 로직이나 다른 설정에 사용할 때 사용됩니다.
# 유연성:

# $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>: Generator Expressions를 사용하여 조건부 설정을 유연하게 적용할 수 있습니다.
# get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES): 변수에 저장된 값을 사용하여 다양한 조건부 로직을 구현할 수 있습니다.
# 이 두 가지 방법은 각각의 상황에 맞게 사용될 수 있으며, 빌드 시스템의 요구사항에 따라 적절한 방법을 선택하면 됩니다.

# CMake에서 $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>와 get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES)는 모두 타겟의 속성을 참조하는 방법이지만, 사용되는 상황과 방식이 다릅니다.

# $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>
# 이 표현식은 CMake의 Generator Expressions 중 하나로, 빌드 시스템이 생성될 때 평가됩니다. 주로 target_include_directories, target_compile_options 등과 같은 명령어 내에서 조건부 설정을 위해 사용됩니다.

# 예제
# Language:
# # CMakeLists.txt

# cmake_minimum_required(VERSION 3.10)
# project(TargetPropertyExample)

# # 라이브러리 타겟 정의
# add_library(my_library src/my_library.cpp)

# # 라이브러리 타겟에 포함 디렉토리 추가
# target_include_directories(my_library PUBLIC
#     ${CMAKE_SOURCE_DIR}/include
# )

# # 실행 파일 타겟 정의
# add_executable(my_executable src/main.cpp)

# # 실행 파일 타겟에 라이브러리 링크
# target_link_libraries(my_executable PRIVATE my_library)

# # 실행 파일 타겟에 라이브러리의 포함 디렉토리 추가
# target_include_directories(my_executable PRIVATE
#     $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>
# )
# 이 예제에서 $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>는 my_library 타겟의 INCLUDE_DIRECTORIES 속성을 참조하여 my_executable 타겟에 포함 디렉토리를 추가합니다. 이 표현식은 빌드 시스템이 생성될 때 평가됩니다.

# get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES)
# 이 명령어는 CMake 스크립트가 실행될 때 평가됩니다. 특정 타겟의 속성을 변수에 저장할 때 사용됩니다. 주로 CMakeLists.txt 파일 내에서 조건부 로직을 구현하거나, 타겟 속성을 참조할 때 사용됩니다.

# 예제
# Language:
# # CMakeLists.txt

# cmake_minimum_required(VERSION 3.10)
# project(TargetPropertyExample)

# # 라이브러리 타겟 정의
# add_library(my_library src/my_library.cpp)

# # 라이브러리 타겟에 포함 디렉토리 추가
# target_include_directories(my_library PUBLIC
#     ${CMAKE_SOURCE_DIR}/include
# )

# # 타겟 속성 가져오기
# get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES)

# # 실행 파일 타겟 정의
# add_executable(my_executable src/main.cpp)

# # 실행 파일 타겟에 라이브러리 링크
# target_link_libraries(my_executable PRIVATE my_library)

# # 실행 파일 타겟에 라이브러리의 포함 디렉토리 추가
# target_include_directories(my_executable PRIVATE
#     ${my_library_directory}
# )
# 이 예제에서 get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES)는 my_library 타겟의 INCLUDE_DIRECTORIES 속성을 my_library_directory 변수에 저장합니다. 그런 다음, 이 변수를 사용하여 my_executable 타겟에 포함 디렉토리를 추가합니다.

# 차이점 요약
# 평가 시점:

# $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>: 빌드 시스템이 생성될 때 평가됩니다.
# get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES): CMake 스크립트가 실행될 때 평가됩니다.
# 사용 상황:

# $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>: 주로 target_include_directories, target_compile_options 등과 같은 명령어 내에서 조건부 설정을 위해 사용됩니다.
# get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES): 특정 타겟의 속성을 변수에 저장하고, 이를 조건부 로직이나 다른 설정에 사용할 때 사용됩니다.
# 유연성:

# $<TARGET_PROPERTY:my_library,INCLUDE_DIRECTORIES>: Generator Expressions를 사용하여 조건부 설정을 유연하게 적용할 수 있습니다.
# get_target_property(my_library_directory my_library INCLUDE_DIRECTORIES): 변수에 저장된 값을 사용하여 다양한 조건부 로직을 구현할 수 있습니다.
# 이 두 가지 방법은 각각의 상황에 맞게 사용될 수 있으며, 빌드 시스템의 요구사항에 따라 적절한 방법을 선택하면 됩니다.