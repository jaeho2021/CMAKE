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
CMAKE_SOURCE_DIR = /data/01.cmake/add_custom_target

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /data/01.cmake/add_custom_target/build

# Utility rule file for generate_file.

# Include any custom commands dependencies for this target.
include CMakeFiles/generate_file.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/generate_file.dir/progress.make

CMakeFiles/generate_file:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/data/01.cmake/add_custom_target/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating some_file.txt"
	/usr/bin/cmake -E echo This\ is\ some\ file\ content > some_file.txt

generate_file: CMakeFiles/generate_file
generate_file: CMakeFiles/generate_file.dir/build.make
.PHONY : generate_file

# Rule to build all files generated by this target.
CMakeFiles/generate_file.dir/build: generate_file
.PHONY : CMakeFiles/generate_file.dir/build

CMakeFiles/generate_file.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/generate_file.dir/cmake_clean.cmake
.PHONY : CMakeFiles/generate_file.dir/clean

CMakeFiles/generate_file.dir/depend:
	cd /data/01.cmake/add_custom_target/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/01.cmake/add_custom_target /data/01.cmake/add_custom_target /data/01.cmake/add_custom_target/build /data/01.cmake/add_custom_target/build /data/01.cmake/add_custom_target/build/CMakeFiles/generate_file.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/generate_file.dir/depend

