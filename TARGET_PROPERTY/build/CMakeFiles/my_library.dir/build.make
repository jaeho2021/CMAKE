# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /data/01.cmake/TARGET_PROPERTY

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/01.cmake/TARGET_PROPERTY/build

# Include any dependencies generated for this target.
include CMakeFiles/my_library.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/my_library.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/my_library.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_library.dir/flags.make

CMakeFiles/my_library.dir/src/my_library.cpp.o: CMakeFiles/my_library.dir/flags.make
CMakeFiles/my_library.dir/src/my_library.cpp.o: /data/01.cmake/TARGET_PROPERTY/src/my_library.cpp
CMakeFiles/my_library.dir/src/my_library.cpp.o: CMakeFiles/my_library.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/data/01.cmake/TARGET_PROPERTY/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/my_library.dir/src/my_library.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_library.dir/src/my_library.cpp.o -MF CMakeFiles/my_library.dir/src/my_library.cpp.o.d -o CMakeFiles/my_library.dir/src/my_library.cpp.o -c /data/01.cmake/TARGET_PROPERTY/src/my_library.cpp

CMakeFiles/my_library.dir/src/my_library.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/my_library.dir/src/my_library.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /data/01.cmake/TARGET_PROPERTY/src/my_library.cpp > CMakeFiles/my_library.dir/src/my_library.cpp.i

CMakeFiles/my_library.dir/src/my_library.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/my_library.dir/src/my_library.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /data/01.cmake/TARGET_PROPERTY/src/my_library.cpp -o CMakeFiles/my_library.dir/src/my_library.cpp.s

# Object files for target my_library
my_library_OBJECTS = \
"CMakeFiles/my_library.dir/src/my_library.cpp.o"

# External object files for target my_library
my_library_EXTERNAL_OBJECTS =

libmy_library.a: CMakeFiles/my_library.dir/src/my_library.cpp.o
libmy_library.a: CMakeFiles/my_library.dir/build.make
libmy_library.a: CMakeFiles/my_library.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/data/01.cmake/TARGET_PROPERTY/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libmy_library.a"
	$(CMAKE_COMMAND) -P CMakeFiles/my_library.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_library.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_library.dir/build: libmy_library.a
.PHONY : CMakeFiles/my_library.dir/build

CMakeFiles/my_library.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_library.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_library.dir/clean

CMakeFiles/my_library.dir/depend:
	cd /data/01.cmake/TARGET_PROPERTY/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/01.cmake/TARGET_PROPERTY /data/01.cmake/TARGET_PROPERTY /data/01.cmake/TARGET_PROPERTY/build /data/01.cmake/TARGET_PROPERTY/build /data/01.cmake/TARGET_PROPERTY/build/CMakeFiles/my_library.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/my_library.dir/depend
