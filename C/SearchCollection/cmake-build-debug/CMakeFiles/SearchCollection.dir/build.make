# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/xujian/Desktop/leetCode/C/SearchCollection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/xujian/Desktop/leetCode/C/SearchCollection/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SearchCollection.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SearchCollection.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SearchCollection.dir/flags.make

CMakeFiles/SearchCollection.dir/main.c.o: CMakeFiles/SearchCollection.dir/flags.make
CMakeFiles/SearchCollection.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/xujian/Desktop/leetCode/C/SearchCollection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/SearchCollection.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/SearchCollection.dir/main.c.o   -c /Users/xujian/Desktop/leetCode/C/SearchCollection/main.c

CMakeFiles/SearchCollection.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/SearchCollection.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/xujian/Desktop/leetCode/C/SearchCollection/main.c > CMakeFiles/SearchCollection.dir/main.c.i

CMakeFiles/SearchCollection.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/SearchCollection.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/xujian/Desktop/leetCode/C/SearchCollection/main.c -o CMakeFiles/SearchCollection.dir/main.c.s

CMakeFiles/SearchCollection.dir/main.c.o.requires:

.PHONY : CMakeFiles/SearchCollection.dir/main.c.o.requires

CMakeFiles/SearchCollection.dir/main.c.o.provides: CMakeFiles/SearchCollection.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/SearchCollection.dir/build.make CMakeFiles/SearchCollection.dir/main.c.o.provides.build
.PHONY : CMakeFiles/SearchCollection.dir/main.c.o.provides

CMakeFiles/SearchCollection.dir/main.c.o.provides.build: CMakeFiles/SearchCollection.dir/main.c.o


# Object files for target SearchCollection
SearchCollection_OBJECTS = \
"CMakeFiles/SearchCollection.dir/main.c.o"

# External object files for target SearchCollection
SearchCollection_EXTERNAL_OBJECTS =

SearchCollection: CMakeFiles/SearchCollection.dir/main.c.o
SearchCollection: CMakeFiles/SearchCollection.dir/build.make
SearchCollection: CMakeFiles/SearchCollection.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/xujian/Desktop/leetCode/C/SearchCollection/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable SearchCollection"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SearchCollection.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SearchCollection.dir/build: SearchCollection

.PHONY : CMakeFiles/SearchCollection.dir/build

CMakeFiles/SearchCollection.dir/requires: CMakeFiles/SearchCollection.dir/main.c.o.requires

.PHONY : CMakeFiles/SearchCollection.dir/requires

CMakeFiles/SearchCollection.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SearchCollection.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SearchCollection.dir/clean

CMakeFiles/SearchCollection.dir/depend:
	cd /Users/xujian/Desktop/leetCode/C/SearchCollection/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/xujian/Desktop/leetCode/C/SearchCollection /Users/xujian/Desktop/leetCode/C/SearchCollection /Users/xujian/Desktop/leetCode/C/SearchCollection/cmake-build-debug /Users/xujian/Desktop/leetCode/C/SearchCollection/cmake-build-debug /Users/xujian/Desktop/leetCode/C/SearchCollection/cmake-build-debug/CMakeFiles/SearchCollection.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SearchCollection.dir/depend

