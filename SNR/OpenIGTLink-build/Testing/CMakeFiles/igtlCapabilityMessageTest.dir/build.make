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
include Testing/CMakeFiles/igtlCapabilityMessageTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Testing/CMakeFiles/igtlCapabilityMessageTest.dir/compiler_depend.make

# Include the progress variables for this target.
include Testing/CMakeFiles/igtlCapabilityMessageTest.dir/progress.make

# Include the compile flags for this target's objects.
include Testing/CMakeFiles/igtlCapabilityMessageTest.dir/flags.make

Testing/CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.o: Testing/CMakeFiles/igtlCapabilityMessageTest.dir/flags.make
Testing/CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.o: /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlCapabilityMessageTest.cxx
Testing/CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.o: Testing/CMakeFiles/igtlCapabilityMessageTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Testing/CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.o"
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Testing/CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.o -MF CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.o.d -o CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.o -c /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlCapabilityMessageTest.cxx

Testing/CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.i"
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlCapabilityMessageTest.cxx > CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.i

Testing/CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.s"
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing/igtlCapabilityMessageTest.cxx -o CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.s

# Object files for target igtlCapabilityMessageTest
igtlCapabilityMessageTest_OBJECTS = \
"CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.o"

# External object files for target igtlCapabilityMessageTest
igtlCapabilityMessageTest_EXTERNAL_OBJECTS =

bin/igtlCapabilityMessageTest: Testing/CMakeFiles/igtlCapabilityMessageTest.dir/igtlCapabilityMessageTest.cxx.o
bin/igtlCapabilityMessageTest: Testing/CMakeFiles/igtlCapabilityMessageTest.dir/build.make
bin/igtlCapabilityMessageTest: lib/libOpenIGTLink.a
bin/igtlCapabilityMessageTest: lib/libgtest_main.a
bin/igtlCapabilityMessageTest: lib/libgtest.a
bin/igtlCapabilityMessageTest: lib/libgmock_main.a
bin/igtlCapabilityMessageTest: lib/libgmock.a
bin/igtlCapabilityMessageTest: Testing/CMakeFiles/igtlCapabilityMessageTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/igtlCapabilityMessageTest"
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/igtlCapabilityMessageTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Testing/CMakeFiles/igtlCapabilityMessageTest.dir/build: bin/igtlCapabilityMessageTest
.PHONY : Testing/CMakeFiles/igtlCapabilityMessageTest.dir/build

Testing/CMakeFiles/igtlCapabilityMessageTest.dir/clean:
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing && $(CMAKE_COMMAND) -P CMakeFiles/igtlCapabilityMessageTest.dir/cmake_clean.cmake
.PHONY : Testing/CMakeFiles/igtlCapabilityMessageTest.dir/clean

Testing/CMakeFiles/igtlCapabilityMessageTest.dir/depend:
	cd /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink/Testing /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing /Users/lisa/Desktop/BRPRobot2021/SNR/OpenIGTLink-build/Testing/CMakeFiles/igtlCapabilityMessageTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Testing/CMakeFiles/igtlCapabilityMessageTest.dir/depend

