# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Produce verbose output by default.
VERBOSE = 1

# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/busy/github/chat_room

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/busy/github/chat_room/build

# Include any dependencies generated for this target.
include sylar/CMakeFiles/test_zkclient.dir/depend.make

# Include the progress variables for this target.
include sylar/CMakeFiles/test_zkclient.dir/progress.make

# Include the compile flags for this target's objects.
include sylar/CMakeFiles/test_zkclient.dir/flags.make

sylar/CMakeFiles/test_zkclient.dir/tests/test_zookeeper.cc.o: sylar/CMakeFiles/test_zkclient.dir/flags.make
sylar/CMakeFiles/test_zkclient.dir/tests/test_zookeeper.cc.o: ../sylar/tests/test_zookeeper.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/busy/github/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sylar/CMakeFiles/test_zkclient.dir/tests/test_zookeeper.cc.o"
	cd /home/busy/github/chat_room/build/sylar && /usr/bin/g++  $(CXX_DEFINES) -D__FILE__=\"tests/test_zookeeper.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_zkclient.dir/tests/test_zookeeper.cc.o -c /home/busy/github/chat_room/sylar/tests/test_zookeeper.cc

sylar/CMakeFiles/test_zkclient.dir/tests/test_zookeeper.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_zkclient.dir/tests/test_zookeeper.cc.i"
	cd /home/busy/github/chat_room/build/sylar && /usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"tests/test_zookeeper.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/busy/github/chat_room/sylar/tests/test_zookeeper.cc > CMakeFiles/test_zkclient.dir/tests/test_zookeeper.cc.i

sylar/CMakeFiles/test_zkclient.dir/tests/test_zookeeper.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_zkclient.dir/tests/test_zookeeper.cc.s"
	cd /home/busy/github/chat_room/build/sylar && /usr/bin/g++ $(CXX_DEFINES) -D__FILE__=\"tests/test_zookeeper.cc\" $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/busy/github/chat_room/sylar/tests/test_zookeeper.cc -o CMakeFiles/test_zkclient.dir/tests/test_zookeeper.cc.s

# Object files for target test_zkclient
test_zkclient_OBJECTS = \
"CMakeFiles/test_zkclient.dir/tests/test_zookeeper.cc.o"

# External object files for target test_zkclient
test_zkclient_EXTERNAL_OBJECTS =

../sylar/bin/test_zkclient: sylar/CMakeFiles/test_zkclient.dir/tests/test_zookeeper.cc.o
../sylar/bin/test_zkclient: sylar/CMakeFiles/test_zkclient.dir/build.make
../sylar/bin/test_zkclient: ../sylar/lib/libsylar.so
../sylar/bin/test_zkclient: /usr/lib/x86_64-linux-gnu/libz.so
../sylar/bin/test_zkclient: /usr/local/lib/libssl.so
../sylar/bin/test_zkclient: /usr/local/lib/libcrypto.so
../sylar/bin/test_zkclient: /usr/local/lib/libprotobuf.so
../sylar/bin/test_zkclient: sylar/CMakeFiles/test_zkclient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/busy/github/chat_room/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../sylar/bin/test_zkclient"
	cd /home/busy/github/chat_room/build/sylar && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_zkclient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sylar/CMakeFiles/test_zkclient.dir/build: ../sylar/bin/test_zkclient

.PHONY : sylar/CMakeFiles/test_zkclient.dir/build

sylar/CMakeFiles/test_zkclient.dir/clean:
	cd /home/busy/github/chat_room/build/sylar && $(CMAKE_COMMAND) -P CMakeFiles/test_zkclient.dir/cmake_clean.cmake
.PHONY : sylar/CMakeFiles/test_zkclient.dir/clean

sylar/CMakeFiles/test_zkclient.dir/depend:
	cd /home/busy/github/chat_room/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/busy/github/chat_room /home/busy/github/chat_room/sylar /home/busy/github/chat_room/build /home/busy/github/chat_room/build/sylar /home/busy/github/chat_room/build/sylar/CMakeFiles/test_zkclient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sylar/CMakeFiles/test_zkclient.dir/depend

