# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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
CMAKE_COMMAND = /usr/bin/cmake.exe

# The command to remove a file.
RM = /usr/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/cadmium_v2/example/Cleaning_robot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/cadmium_v2/example/Cleaning_robot

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake.exe -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake.exe --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /cygdrive/c/cadmium_v2/example/Cleaning_robot/CMakeFiles /cygdrive/c/cadmium_v2/example/Cleaning_robot//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /cygdrive/c/cadmium_v2/example/Cleaning_robot/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -P /cygdrive/c/cadmium_v2/example/Cleaning_robot/CMakeFiles/VerifyGlobs.cmake
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named main_motion_Controller_test

# Build rule for target.
main_motion_Controller_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 main_motion_Controller_test
.PHONY : main_motion_Controller_test

# fast build rule for target.
main_motion_Controller_test/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_motion_Controller_test.dir/build.make CMakeFiles/main_motion_Controller_test.dir/build
.PHONY : main_motion_Controller_test/fast

#=============================================================================
# Target rules for targets named main_sensor_test

# Build rule for target.
main_sensor_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 main_sensor_test
.PHONY : main_sensor_test

# fast build rule for target.
main_sensor_test/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_sensor_test.dir/build.make CMakeFiles/main_sensor_test.dir/build
.PHONY : main_sensor_test/fast

#=============================================================================
# Target rules for targets named main_vaccume_robot

# Build rule for target.
main_vaccume_robot: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 main_vaccume_robot
.PHONY : main_vaccume_robot

# fast build rule for target.
main_vaccume_robot/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_vaccume_robot.dir/build.make CMakeFiles/main_vaccume_robot.dir/build
.PHONY : main_vaccume_robot/fast

#=============================================================================
# Target rules for targets named main_wheel_test

# Build rule for target.
main_wheel_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 main_wheel_test
.PHONY : main_wheel_test

# fast build rule for target.
main_wheel_test/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_wheel_test.dir/build.make CMakeFiles/main_wheel_test.dir/build
.PHONY : main_wheel_test/fast

#=============================================================================
# Target rules for targets named run

# Build rule for target.
run: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 run
.PHONY : run

# fast build rule for target.
run/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/run.dir/build.make CMakeFiles/run.dir/build
.PHONY : run/fast

#=============================================================================
# Target rules for targets named run_test

# Build rule for target.
run_test: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 run_test
.PHONY : run_test

# fast build rule for target.
run_test/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/run_test.dir/build.make CMakeFiles/run_test.dir/build
.PHONY : run_test/fast

src/main_motion_Controller_test.o: src/main_motion_Controller_test.cpp.o
.PHONY : src/main_motion_Controller_test.o

# target to build an object file
src/main_motion_Controller_test.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_motion_Controller_test.dir/build.make CMakeFiles/main_motion_Controller_test.dir/src/main_motion_Controller_test.cpp.o
.PHONY : src/main_motion_Controller_test.cpp.o

src/main_motion_Controller_test.i: src/main_motion_Controller_test.cpp.i
.PHONY : src/main_motion_Controller_test.i

# target to preprocess a source file
src/main_motion_Controller_test.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_motion_Controller_test.dir/build.make CMakeFiles/main_motion_Controller_test.dir/src/main_motion_Controller_test.cpp.i
.PHONY : src/main_motion_Controller_test.cpp.i

src/main_motion_Controller_test.s: src/main_motion_Controller_test.cpp.s
.PHONY : src/main_motion_Controller_test.s

# target to generate assembly for a file
src/main_motion_Controller_test.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_motion_Controller_test.dir/build.make CMakeFiles/main_motion_Controller_test.dir/src/main_motion_Controller_test.cpp.s
.PHONY : src/main_motion_Controller_test.cpp.s

src/main_sensor_test.o: src/main_sensor_test.cpp.o
.PHONY : src/main_sensor_test.o

# target to build an object file
src/main_sensor_test.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_sensor_test.dir/build.make CMakeFiles/main_sensor_test.dir/src/main_sensor_test.cpp.o
.PHONY : src/main_sensor_test.cpp.o

src/main_sensor_test.i: src/main_sensor_test.cpp.i
.PHONY : src/main_sensor_test.i

# target to preprocess a source file
src/main_sensor_test.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_sensor_test.dir/build.make CMakeFiles/main_sensor_test.dir/src/main_sensor_test.cpp.i
.PHONY : src/main_sensor_test.cpp.i

src/main_sensor_test.s: src/main_sensor_test.cpp.s
.PHONY : src/main_sensor_test.s

# target to generate assembly for a file
src/main_sensor_test.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_sensor_test.dir/build.make CMakeFiles/main_sensor_test.dir/src/main_sensor_test.cpp.s
.PHONY : src/main_sensor_test.cpp.s

src/main_vaccume_robot.o: src/main_vaccume_robot.cpp.o
.PHONY : src/main_vaccume_robot.o

# target to build an object file
src/main_vaccume_robot.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_vaccume_robot.dir/build.make CMakeFiles/main_vaccume_robot.dir/src/main_vaccume_robot.cpp.o
.PHONY : src/main_vaccume_robot.cpp.o

src/main_vaccume_robot.i: src/main_vaccume_robot.cpp.i
.PHONY : src/main_vaccume_robot.i

# target to preprocess a source file
src/main_vaccume_robot.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_vaccume_robot.dir/build.make CMakeFiles/main_vaccume_robot.dir/src/main_vaccume_robot.cpp.i
.PHONY : src/main_vaccume_robot.cpp.i

src/main_vaccume_robot.s: src/main_vaccume_robot.cpp.s
.PHONY : src/main_vaccume_robot.s

# target to generate assembly for a file
src/main_vaccume_robot.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_vaccume_robot.dir/build.make CMakeFiles/main_vaccume_robot.dir/src/main_vaccume_robot.cpp.s
.PHONY : src/main_vaccume_robot.cpp.s

src/main_wheel_test.o: src/main_wheel_test.cpp.o
.PHONY : src/main_wheel_test.o

# target to build an object file
src/main_wheel_test.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_wheel_test.dir/build.make CMakeFiles/main_wheel_test.dir/src/main_wheel_test.cpp.o
.PHONY : src/main_wheel_test.cpp.o

src/main_wheel_test.i: src/main_wheel_test.cpp.i
.PHONY : src/main_wheel_test.i

# target to preprocess a source file
src/main_wheel_test.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_wheel_test.dir/build.make CMakeFiles/main_wheel_test.dir/src/main_wheel_test.cpp.i
.PHONY : src/main_wheel_test.cpp.i

src/main_wheel_test.s: src/main_wheel_test.cpp.s
.PHONY : src/main_wheel_test.s

# target to generate assembly for a file
src/main_wheel_test.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/main_wheel_test.dir/build.make CMakeFiles/main_wheel_test.dir/src/main_wheel_test.cpp.s
.PHONY : src/main_wheel_test.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... run"
	@echo "... run_test"
	@echo "... main_motion_Controller_test"
	@echo "... main_sensor_test"
	@echo "... main_vaccume_robot"
	@echo "... main_wheel_test"
	@echo "... src/main_motion_Controller_test.o"
	@echo "... src/main_motion_Controller_test.i"
	@echo "... src/main_motion_Controller_test.s"
	@echo "... src/main_sensor_test.o"
	@echo "... src/main_sensor_test.i"
	@echo "... src/main_sensor_test.s"
	@echo "... src/main_vaccume_robot.o"
	@echo "... src/main_vaccume_robot.i"
	@echo "... src/main_vaccume_robot.s"
	@echo "... src/main_wheel_test.o"
	@echo "... src/main_wheel_test.i"
	@echo "... src/main_wheel_test.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -P /cygdrive/c/cadmium_v2/example/Cleaning_robot/CMakeFiles/VerifyGlobs.cmake
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

