# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/aaravjain/desktop/ray-tracing-engine

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/aaravjain/desktop/ray-tracing-engine/build

# Include any dependencies generated for this target.
include CMakeFiles/ray-tracing-engine.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ray-tracing-engine.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ray-tracing-engine.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ray-tracing-engine.dir/flags.make

CMakeFiles/ray-tracing-engine.dir/camera.cpp.o: CMakeFiles/ray-tracing-engine.dir/flags.make
CMakeFiles/ray-tracing-engine.dir/camera.cpp.o: /Users/aaravjain/desktop/ray-tracing-engine/camera.cpp
CMakeFiles/ray-tracing-engine.dir/camera.cpp.o: CMakeFiles/ray-tracing-engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaravjain/desktop/ray-tracing-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ray-tracing-engine.dir/camera.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ray-tracing-engine.dir/camera.cpp.o -MF CMakeFiles/ray-tracing-engine.dir/camera.cpp.o.d -o CMakeFiles/ray-tracing-engine.dir/camera.cpp.o -c /Users/aaravjain/desktop/ray-tracing-engine/camera.cpp

CMakeFiles/ray-tracing-engine.dir/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray-tracing-engine.dir/camera.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaravjain/desktop/ray-tracing-engine/camera.cpp > CMakeFiles/ray-tracing-engine.dir/camera.cpp.i

CMakeFiles/ray-tracing-engine.dir/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray-tracing-engine.dir/camera.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaravjain/desktop/ray-tracing-engine/camera.cpp -o CMakeFiles/ray-tracing-engine.dir/camera.cpp.s

CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.o: CMakeFiles/ray-tracing-engine.dir/flags.make
CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.o: /Users/aaravjain/desktop/ray-tracing-engine/hittable_list.cpp
CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.o: CMakeFiles/ray-tracing-engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaravjain/desktop/ray-tracing-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.o -MF CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.o.d -o CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.o -c /Users/aaravjain/desktop/ray-tracing-engine/hittable_list.cpp

CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaravjain/desktop/ray-tracing-engine/hittable_list.cpp > CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.i

CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaravjain/desktop/ray-tracing-engine/hittable_list.cpp -o CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.s

CMakeFiles/ray-tracing-engine.dir/main.cpp.o: CMakeFiles/ray-tracing-engine.dir/flags.make
CMakeFiles/ray-tracing-engine.dir/main.cpp.o: /Users/aaravjain/desktop/ray-tracing-engine/main.cpp
CMakeFiles/ray-tracing-engine.dir/main.cpp.o: CMakeFiles/ray-tracing-engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaravjain/desktop/ray-tracing-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ray-tracing-engine.dir/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ray-tracing-engine.dir/main.cpp.o -MF CMakeFiles/ray-tracing-engine.dir/main.cpp.o.d -o CMakeFiles/ray-tracing-engine.dir/main.cpp.o -c /Users/aaravjain/desktop/ray-tracing-engine/main.cpp

CMakeFiles/ray-tracing-engine.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray-tracing-engine.dir/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaravjain/desktop/ray-tracing-engine/main.cpp > CMakeFiles/ray-tracing-engine.dir/main.cpp.i

CMakeFiles/ray-tracing-engine.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray-tracing-engine.dir/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaravjain/desktop/ray-tracing-engine/main.cpp -o CMakeFiles/ray-tracing-engine.dir/main.cpp.s

CMakeFiles/ray-tracing-engine.dir/num.cpp.o: CMakeFiles/ray-tracing-engine.dir/flags.make
CMakeFiles/ray-tracing-engine.dir/num.cpp.o: /Users/aaravjain/desktop/ray-tracing-engine/num.cpp
CMakeFiles/ray-tracing-engine.dir/num.cpp.o: CMakeFiles/ray-tracing-engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaravjain/desktop/ray-tracing-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ray-tracing-engine.dir/num.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ray-tracing-engine.dir/num.cpp.o -MF CMakeFiles/ray-tracing-engine.dir/num.cpp.o.d -o CMakeFiles/ray-tracing-engine.dir/num.cpp.o -c /Users/aaravjain/desktop/ray-tracing-engine/num.cpp

CMakeFiles/ray-tracing-engine.dir/num.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray-tracing-engine.dir/num.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaravjain/desktop/ray-tracing-engine/num.cpp > CMakeFiles/ray-tracing-engine.dir/num.cpp.i

CMakeFiles/ray-tracing-engine.dir/num.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray-tracing-engine.dir/num.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaravjain/desktop/ray-tracing-engine/num.cpp -o CMakeFiles/ray-tracing-engine.dir/num.cpp.s

CMakeFiles/ray-tracing-engine.dir/sphere.cpp.o: CMakeFiles/ray-tracing-engine.dir/flags.make
CMakeFiles/ray-tracing-engine.dir/sphere.cpp.o: /Users/aaravjain/desktop/ray-tracing-engine/sphere.cpp
CMakeFiles/ray-tracing-engine.dir/sphere.cpp.o: CMakeFiles/ray-tracing-engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaravjain/desktop/ray-tracing-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ray-tracing-engine.dir/sphere.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ray-tracing-engine.dir/sphere.cpp.o -MF CMakeFiles/ray-tracing-engine.dir/sphere.cpp.o.d -o CMakeFiles/ray-tracing-engine.dir/sphere.cpp.o -c /Users/aaravjain/desktop/ray-tracing-engine/sphere.cpp

CMakeFiles/ray-tracing-engine.dir/sphere.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray-tracing-engine.dir/sphere.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaravjain/desktop/ray-tracing-engine/sphere.cpp > CMakeFiles/ray-tracing-engine.dir/sphere.cpp.i

CMakeFiles/ray-tracing-engine.dir/sphere.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray-tracing-engine.dir/sphere.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaravjain/desktop/ray-tracing-engine/sphere.cpp -o CMakeFiles/ray-tracing-engine.dir/sphere.cpp.s

CMakeFiles/ray-tracing-engine.dir/vec3.cpp.o: CMakeFiles/ray-tracing-engine.dir/flags.make
CMakeFiles/ray-tracing-engine.dir/vec3.cpp.o: /Users/aaravjain/desktop/ray-tracing-engine/vec3.cpp
CMakeFiles/ray-tracing-engine.dir/vec3.cpp.o: CMakeFiles/ray-tracing-engine.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/aaravjain/desktop/ray-tracing-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ray-tracing-engine.dir/vec3.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ray-tracing-engine.dir/vec3.cpp.o -MF CMakeFiles/ray-tracing-engine.dir/vec3.cpp.o.d -o CMakeFiles/ray-tracing-engine.dir/vec3.cpp.o -c /Users/aaravjain/desktop/ray-tracing-engine/vec3.cpp

CMakeFiles/ray-tracing-engine.dir/vec3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ray-tracing-engine.dir/vec3.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/aaravjain/desktop/ray-tracing-engine/vec3.cpp > CMakeFiles/ray-tracing-engine.dir/vec3.cpp.i

CMakeFiles/ray-tracing-engine.dir/vec3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ray-tracing-engine.dir/vec3.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/aaravjain/desktop/ray-tracing-engine/vec3.cpp -o CMakeFiles/ray-tracing-engine.dir/vec3.cpp.s

# Object files for target ray-tracing-engine
ray__tracing__engine_OBJECTS = \
"CMakeFiles/ray-tracing-engine.dir/camera.cpp.o" \
"CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.o" \
"CMakeFiles/ray-tracing-engine.dir/main.cpp.o" \
"CMakeFiles/ray-tracing-engine.dir/num.cpp.o" \
"CMakeFiles/ray-tracing-engine.dir/sphere.cpp.o" \
"CMakeFiles/ray-tracing-engine.dir/vec3.cpp.o"

# External object files for target ray-tracing-engine
ray__tracing__engine_EXTERNAL_OBJECTS =

ray-tracing-engine: CMakeFiles/ray-tracing-engine.dir/camera.cpp.o
ray-tracing-engine: CMakeFiles/ray-tracing-engine.dir/hittable_list.cpp.o
ray-tracing-engine: CMakeFiles/ray-tracing-engine.dir/main.cpp.o
ray-tracing-engine: CMakeFiles/ray-tracing-engine.dir/num.cpp.o
ray-tracing-engine: CMakeFiles/ray-tracing-engine.dir/sphere.cpp.o
ray-tracing-engine: CMakeFiles/ray-tracing-engine.dir/vec3.cpp.o
ray-tracing-engine: CMakeFiles/ray-tracing-engine.dir/build.make
ray-tracing-engine: CMakeFiles/ray-tracing-engine.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/aaravjain/desktop/ray-tracing-engine/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable ray-tracing-engine"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ray-tracing-engine.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ray-tracing-engine.dir/build: ray-tracing-engine
.PHONY : CMakeFiles/ray-tracing-engine.dir/build

CMakeFiles/ray-tracing-engine.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ray-tracing-engine.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ray-tracing-engine.dir/clean

CMakeFiles/ray-tracing-engine.dir/depend:
	cd /Users/aaravjain/desktop/ray-tracing-engine/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/aaravjain/desktop/ray-tracing-engine /Users/aaravjain/desktop/ray-tracing-engine /Users/aaravjain/desktop/ray-tracing-engine/build /Users/aaravjain/desktop/ray-tracing-engine/build /Users/aaravjain/desktop/ray-tracing-engine/build/CMakeFiles/ray-tracing-engine.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ray-tracing-engine.dir/depend

