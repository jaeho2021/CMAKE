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

# Utility rule file for run_script.

# Include any custom commands dependencies for this target.
include CMakeFiles/run_script.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/run_script.dir/progress.make

CMakeFiles/run_script: some_file.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/data/01.cmake/add_custom_target/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running custom script after generating file"
	/usr/bin/cmake -E echo Running\ custom\ script

run_script: CMakeFiles/run_script
run_script: CMakeFiles/run_script.dir/build.make
.PHONY : run_script

# Rule to build all files generated by this target.
CMakeFiles/run_script.dir/build: run_script
.PHONY : CMakeFiles/run_script.dir/build

CMakeFiles/run_script.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/run_script.dir/cmake_clean.cmake
.PHONY : CMakeFiles/run_script.dir/clean

CMakeFiles/run_script.dir/depend:
	cd /data/01.cmake/add_custom_target/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /data/01.cmake/add_custom_target /data/01.cmake/add_custom_target /data/01.cmake/add_custom_target/build /data/01.cmake/add_custom_target/build /data/01.cmake/add_custom_target/build/CMakeFiles/run_script.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/run_script.dir/depend

