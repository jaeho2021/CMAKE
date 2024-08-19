cmake_minimum_required(VERSION 3.10)
project(CustomLibraryProject VERSION 1.0.0)

# 라이브러리 이름을 변수로 정의
set(name CustomLibrary)

# 정적 라이브러리로 ${name} 타겟 생성
add_library(${name} STATIC "")

# ${name} 타겟을 위한 인터페이스 라이브러리 정의
add_library(CustomLibrary_interface INTERFACE)

# CustomLibrary_interface 타겟에 include 디렉토리 추가
target_include_directories(CustomLibrary_interface INTERFACE
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
    $<INSTALL_INTERFACE:include>)

# CustomLibrary_interface 타겟에 컴파일 정의 추가
target_compile_definitions(CustomLibrary_interface INTERFACE
    CustomLibrary_DEFINE=1
)

# CustomLibrary_interface 타겟에 컴파일 옵션 추가
target_compile_options(CustomLibrary_interface INTERFACE
    -Wall
    -Wextra
)

add_custom_target(compiler)
add_custom_target(compiler-cpp)

include(${CMAKE_SOURCE_DIR}/cmake/compiler.cmake)

# -imacros 옵션을 추가하여 macros.h 파일을 포함시킵니다.
#target_compile_options(CustomLibrary_interface PRIVATE -imacros ${CMAKE_SOURCE_DIR}/macros.h)

set_compiler_property(PROPERTY imacros -imacros)

# ${name} 타겟을 CustomLibrary_interface 타겟과 링크
target_link_libraries(${name} PRIVATE CustomLibrary_interface)

# ${name} 타겟에 소스 파일 추가
target_sources(${name} PRIVATE
    ${CMAKE_SOURCE_DIR}/src/file1.cpp
    ${CMAKE_SOURCE_DIR}/src/file2.cpp
    ${CMAKE_SOURCE_DIR}/src/file3.cpp
)

# 선택적으로, ${name} 타겟에 속성 설정
set_target_properties(${name} PROPERTIES
    CXX_STANDARD 11
    CXX_STANDARD_REQUIRED YES
)

############################
# 설치 경로 설정
include(GNUInstallDirs)

# 라이브러리 설치
install(TARGETS CustomLibrary CustomLibrary_interface
        EXPORT CustomLibraryTargets
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
        INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

# 헤더 파일 설치
install(DIRECTORY include/
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

# 패키지 구성 파일 생성
include(CMakePackageConfigHelpers)


# 버전 파일 생성
write_basic_package_version_file(
    "${CMAKE_CURRENT_BINARY_DIR}/CustomLibraryConfigVersion.cmake"
    VERSION ${PROJECT_VERSION}
    COMPATIBILITY AnyNewerVersion
)

# 패키지 구성 파일 생성
configure_package_config_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake/CustomLibraryConfig.cmake.in"
    "${CMAKE_CURRENT_BINARY_DIR}/CustomLibraryConfig.cmake"
    INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/CustomLibrary
)

# 패키지 구성 파일 설치
install(FILES
    "${CMAKE_CURRENT_BINARY_DIR}/CustomLibraryConfig.cmake"
    "${CMAKE_CURRENT_BINARY_DIR}/CustomLibraryConfigVersion.cmake"
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/CustomLibrary
)


# 타겟 파일 설치
install(EXPORT CustomLibraryTargets
    FILE CustomLibraryTargets.cmake
    NAMESPACE CustomLibrary::
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/CustomLibrary
)

export(EXPORT CustomLibraryTargets
       FILE "${CMAKE_CURRENT_BINARY_DIR}/CustomLibraryTargets.cmake")
