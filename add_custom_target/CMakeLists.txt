cmake_minimum_required(VERSION 3.10)
project(CustomTargetExample)

# 'some_file.txt' 파일을 생성하는 사용자 정의 타겟을 만듭니다.
add_custom_target(generate_file
    COMMAND ${CMAKE_COMMAND} -E echo "This is some file content" > some_file.txt
    COMMENT "Generating some_file.txt"
)

# 'run_script'라는 사용자 정의 타겟을 만듭니다.
add_custom_target(run_script
    ALL  # 기본 빌드의 일부로 만듭니다.
    COMMAND ${CMAKE_COMMAND} -E echo "Running custom script"
    DEPENDS generate_file some_file.txt
    COMMENT "Running custom script after generating file"
)

# 'generate_file' 타겟이 'some_file.txt' 파일을 생성한 후에 'run_script' 타겟이 실행됩니다.
