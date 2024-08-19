cmake_minimum_required(VERSION 3.14)
project(MyProject VERSION 1.0.0)

# 라이브러리 생성
add_library(MyLibrary STATIC src/MyLibrary.cpp)

# 포함 디렉토리 설정
target_include_directories(MyLibrary PUBLIC
    "$<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include/MyLibrary>"
    "$<INSTALL_INTERFACE:include/MyLibrary>"
)

# 설치 경로 설정
include(GNUInstallDirs)

# 라이브러리 설치
install(TARGETS MyLibrary
        EXPORT MyLibraryTargets
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
        INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

# 헤더 파일 설치
install(DIRECTORY include/
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

#####

add_library(MyLibrary_ext STATIC src/MyLibrary_ext.cpp)

target_include_directories(MyLibrary_ext PUBLIC
    "$<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include/MyLibrary_ext>"
    "$<INSTALL_INTERFACE:include/MyLibrary_ext>"
)

# 라이브러리 설치
install(TARGETS MyLibrary_ext
        EXPORT MyLibraryTargets
        LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
        ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
        RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
        INCLUDES DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

# 헤더 파일 설치
install(DIRECTORY include/MyLibrary_ext/
DESTINATION ${CMAKE_INSTALL_INCLUDEDIR})

#####

# 패키지 구성 파일 생성
include(CMakePackageConfigHelpers)

# 버전 파일 생성
write_basic_package_version_file(
    "${CMAKE_CURRENT_BINARY_DIR}/MyLibraryConfigVersion.cmake"
    VERSION ${PROJECT_VERSION}
    COMPATIBILITY AnyNewerVersion
)

# 패키지 구성 파일 생성
configure_package_config_file(
    "${CMAKE_CURRENT_SOURCE_DIR}/cmake/MyLibraryConfig.cmake.in"
    "${CMAKE_CURRENT_BINARY_DIR}/MyLibraryConfig.cmake"
    INSTALL_DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/MyLibrary
)

# 패키지 구성 파일 설치
install(FILES
    "${CMAKE_CURRENT_BINARY_DIR}/MyLibraryConfig.cmake"
    "${CMAKE_CURRENT_BINARY_DIR}/MyLibraryConfigVersion.cmake"
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/MyLibrary
)

# 타겟 파일 설치
install(EXPORT MyLibraryTargets
    FILE MyLibraryTargets.cmake
    NAMESPACE MyLibrary11::
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/MyLibrary
)

export(EXPORT MyLibraryTargets
       FILE "${CMAKE_CURRENT_BINARY_DIR}/MyLibraryTargets.cmake")
