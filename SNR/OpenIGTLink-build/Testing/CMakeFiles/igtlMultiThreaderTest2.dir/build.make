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
include Testing/CMakeFiles/igtlMultiThreaderTest2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Testing/CMakeFiles/igtlMultiThreaderTest2.dir/compiler_depend.make

# Include the progress variables for this target.
include Testing/CMakeFiles/igtlMultiThreaderTest2.dir/progress.make

# Include the compile flags for this target's objects.
include Testing/CMakeFiles/igtlMultiThreaderTest2.dir/flags.make

Testing/CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.o: Testing/CMakeFiles/igtlMultiThreaderTest2.dir/flags.make
Testing/CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.o: /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlMultiThreaderTest2.cxx
Testing/CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.o: Testing/CMakeFiles/igtlMultiThreaderTest2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Testing/CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.o"
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Testing/CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.o -MF CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.o.d -o CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.o -c /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlMultiThreaderTest2.cxx

Testing/CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.i"
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlMultiThreaderTest2.cxx > CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.i

Testing/CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.s"
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlMultiThreaderTest2.cxx -o CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.s

# Object files for target igtlMultiThreaderTest2
igtlMultiThreaderTest2_OBJECTS = \
"CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.o"

# External object files for target igtlMultiThreaderTest2
igtlMultiThreaderTest2_EXTERNAL_OBJECTS =

bin/igtlMultiThreaderTest2: Testing/CMakeFiles/igtlMultiThreaderTest2.dir/igtlMultiThreaderTest2.cxx.o
bin/igtlMultiThreaderTest2: Testing/CMakeFiles/igtlMultiThreaderTest2.dir/build.make
bin/igtlMultiThreaderTest2: lib/libOpenIGTLink.a
bin/igtlMultiThreaderTest2: Testing/CMakeFiles/igtlMultiThreaderTest2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/igtlMultiThreaderTest2"
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/igtlMultiThreaderTest2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Testing/CMakeFiles/igtlMultiThreaderTest2.dir/build: bin/igtlMultiThreaderTest2
.PHONY : Testing/CMakeFiles/igtlMultiThreaderTest2.dir/build

Testing/CMakeFiles/igtlMultiThreaderTest2.dir/clean:
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing && $(CMAKE_COMMAND) -P CMakeFiles/igtlMultiThreaderTest2.dir/cmake_clean.cmake
.PHONY : Testing/CMakeFiles/igtlMultiThreaderTest2.dir/clean

Testing/CMakeFiles/igtlMultiThreaderTest2.dir/depend:
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing/CMakeFiles/igtlMultiThreaderTest2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Testing/CMakeFiles/igtlMultiThreaderTest2.dir/depend

