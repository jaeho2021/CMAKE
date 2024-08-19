#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "MyLibrary11::MyLibrary" for configuration ""
set_property(TARGET MyLibrary11::MyLibrary APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(MyLibrary11::MyLibrary PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libMyLibrary.a"
  )

list(APPEND _cmake_import_check_targets MyLibrary11::MyLibrary )
list(APPEND _cmake_import_check_files_for_MyLibrary11::MyLibrary "${_IMPORT_PREFIX}/lib/libMyLibrary.a" )

# Import target "MyLibrary11::MyLibrary_ext" for configuration ""
set_property(TARGET MyLibrary11::MyLibrary_ext APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(MyLibrary11::MyLibrary_ext PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libMyLibrary_ext.a"
  )

list(APPEND _cmake_import_check_targets MyLibrary11::MyLibrary_ext )
list(APPEND _cmake_import_check_files_for_MyLibrary11::MyLibrary_ext "${_IMPORT_PREFIX}/lib/libMyLibrary_ext.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
