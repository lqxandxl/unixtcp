# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

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

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lqx/unixtcp/client1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lqx/unixtcp/client1/build

# Include any dependencies generated for this target.
include CMakeFiles/client.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/client.dir/flags.make

CMakeFiles/client.dir/client1.c.o: CMakeFiles/client.dir/flags.make
CMakeFiles/client.dir/client1.c.o: ../client1.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/lqx/unixtcp/client1/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object CMakeFiles/client.dir/client1.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/client.dir/client1.c.o   -c /home/lqx/unixtcp/client1/client1.c

CMakeFiles/client.dir/client1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/client.dir/client1.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/lqx/unixtcp/client1/client1.c > CMakeFiles/client.dir/client1.c.i

CMakeFiles/client.dir/client1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/client.dir/client1.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/lqx/unixtcp/client1/client1.c -o CMakeFiles/client.dir/client1.c.s

CMakeFiles/client.dir/client1.c.o.requires:
.PHONY : CMakeFiles/client.dir/client1.c.o.requires

CMakeFiles/client.dir/client1.c.o.provides: CMakeFiles/client.dir/client1.c.o.requires
	$(MAKE) -f CMakeFiles/client.dir/build.make CMakeFiles/client.dir/client1.c.o.provides.build
.PHONY : CMakeFiles/client.dir/client1.c.o.provides

CMakeFiles/client.dir/client1.c.o.provides.build: CMakeFiles/client.dir/client1.c.o

# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/client1.c.o"

# External object files for target client
client_EXTERNAL_OBJECTS =

client: CMakeFiles/client.dir/client1.c.o
client: CMakeFiles/client.dir/build.make
client: CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable client"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/client.dir/build: client
.PHONY : CMakeFiles/client.dir/build

CMakeFiles/client.dir/requires: CMakeFiles/client.dir/client1.c.o.requires
.PHONY : CMakeFiles/client.dir/requires

CMakeFiles/client.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/client.dir/cmake_clean.cmake
.PHONY : CMakeFiles/client.dir/clean

CMakeFiles/client.dir/depend:
	cd /home/lqx/unixtcp/client1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lqx/unixtcp/client1 /home/lqx/unixtcp/client1 /home/lqx/unixtcp/client1/build /home/lqx/unixtcp/client1/build /home/lqx/unixtcp/client1/build/CMakeFiles/client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/client.dir/depend

