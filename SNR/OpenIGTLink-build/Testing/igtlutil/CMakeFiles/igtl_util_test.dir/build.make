# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.21.3_1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.21.3_1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build

# Include any dependencies generated for this target.
include Testing/igtlutil/CMakeFiles/igtl_util_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Testing/igtlutil/CMakeFiles/igtl_util_test.dir/compiler_depend.make

# Include the progress variables for this target.
include Testing/igtlutil/CMakeFiles/igtl_util_test.dir/progress.make

# Include the compile flags for this target's objects.
include Testing/igtlutil/CMakeFiles/igtl_util_test.dir/flags.make

Testing/igtlutil/CMakeFiles/igtl_util_test.dir/igtl_util_test.c.o: Testing/igtlutil/CMakeFiles/igtl_util_test.dir/flags.make
Testing/igtlutil/CMakeFiles/igtl_util_test.dir/igtl_util_test.c.o: /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlutil/igtl_util_test.c
Testing/igtlutil/CMakeFiles/igtl_util_test.dir/igtl_util_test.c.o: Testing/igtlutil/CMakeFiles/igtl_util_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object Testing/igtlutil/CMakeFiles/igtl_util_test.dir/igtl_util_test.c.o"
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing/igtlutil && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT Testing/igtlutil/CMakeFiles/igtl_util_test.dir/igtl_util_test.c.o -MF CMakeFiles/igtl_util_test.dir/igtl_util_test.c.o.d -o CMakeFiles/igtl_util_test.dir/igtl_util_test.c.o -c /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlutil/igtl_util_test.c

Testing/igtlutil/CMakeFiles/igtl_util_test.dir/igtl_util_test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/igtl_util_test.dir/igtl_util_test.c.i"
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing/igtlutil && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlutil/igtl_util_test.c > CMakeFiles/igtl_util_test.dir/igtl_util_test.c.i

Testing/igtlutil/CMakeFiles/igtl_util_test.dir/igtl_util_test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/igtl_util_test.dir/igtl_util_test.c.s"
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing/igtlutil && /Library/Developer/CommandLineTools/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlutil/igtl_util_test.c -o CMakeFiles/igtl_util_test.dir/igtl_util_test.c.s

# Object files for target igtl_util_test
igtl_util_test_OBJECTS = \
"CMakeFiles/igtl_util_test.dir/igtl_util_test.c.o"

# External object files for target igtl_util_test
igtl_util_test_EXTERNAL_OBJECTS =

bin/igtl_util_test: Testing/igtlutil/CMakeFiles/igtl_util_test.dir/igtl_util_test.c.o
bin/igtl_util_test: Testing/igtlutil/CMakeFiles/igtl_util_test.dir/build.make
bin/igtl_util_test: lib/libOpenIGTLink.a
bin/igtl_util_test: Testing/igtlutil/CMakeFiles/igtl_util_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../bin/igtl_util_test"
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing/igtlutil && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/igtl_util_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Testing/igtlutil/CMakeFiles/igtl_util_test.dir/build: bin/igtl_util_test
.PHONY : Testing/igtlutil/CMakeFiles/igtl_util_test.dir/build

Testing/igtlutil/CMakeFiles/igtl_util_test.dir/clean:
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing/igtlutil && $(CMAKE_COMMAND) -P CMakeFiles/igtl_util_test.dir/cmake_clean.cmake
.PHONY : Testing/igtlutil/CMakeFiles/igtl_util_test.dir/clean

Testing/igtlutil/CMakeFiles/igtl_util_test.dir/depend:
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlutil /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing/igtlutil /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing/igtlutil/CMakeFiles/igtl_util_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Testing/igtlutil/CMakeFiles/igtl_util_test.dir/depend

