# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = "/home/laurier/Fichiers de programme/clion-2018.3.3/bin/cmake/linux/bin/cmake"

# The command to remove a file.
RM = "/home/laurier/Fichiers de programme/clion-2018.3.3/bin/cmake/linux/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/laurier/Dépôts Git/cpp-learning-opengl"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/laurier/Dépôts Git/cpp-learning-opengl/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/cpp_learning_opengl.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cpp_learning_opengl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cpp_learning_opengl.dir/flags.make

CMakeFiles/cpp_learning_opengl.dir/src/main.cpp.o: CMakeFiles/cpp_learning_opengl.dir/flags.make
CMakeFiles/cpp_learning_opengl.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/laurier/Dépôts Git/cpp-learning-opengl/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cpp_learning_opengl.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp_learning_opengl.dir/src/main.cpp.o -c "/home/laurier/Dépôts Git/cpp-learning-opengl/src/main.cpp"

CMakeFiles/cpp_learning_opengl.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp_learning_opengl.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/laurier/Dépôts Git/cpp-learning-opengl/src/main.cpp" > CMakeFiles/cpp_learning_opengl.dir/src/main.cpp.i

CMakeFiles/cpp_learning_opengl.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp_learning_opengl.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/laurier/Dépôts Git/cpp-learning-opengl/src/main.cpp" -o CMakeFiles/cpp_learning_opengl.dir/src/main.cpp.s

CMakeFiles/cpp_learning_opengl.dir/src/shader.cpp.o: CMakeFiles/cpp_learning_opengl.dir/flags.make
CMakeFiles/cpp_learning_opengl.dir/src/shader.cpp.o: ../src/shader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/laurier/Dépôts Git/cpp-learning-opengl/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cpp_learning_opengl.dir/src/shader.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cpp_learning_opengl.dir/src/shader.cpp.o -c "/home/laurier/Dépôts Git/cpp-learning-opengl/src/shader.cpp"

CMakeFiles/cpp_learning_opengl.dir/src/shader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cpp_learning_opengl.dir/src/shader.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/laurier/Dépôts Git/cpp-learning-opengl/src/shader.cpp" > CMakeFiles/cpp_learning_opengl.dir/src/shader.cpp.i

CMakeFiles/cpp_learning_opengl.dir/src/shader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cpp_learning_opengl.dir/src/shader.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/laurier/Dépôts Git/cpp-learning-opengl/src/shader.cpp" -o CMakeFiles/cpp_learning_opengl.dir/src/shader.cpp.s

# Object files for target cpp_learning_opengl
cpp_learning_opengl_OBJECTS = \
"CMakeFiles/cpp_learning_opengl.dir/src/main.cpp.o" \
"CMakeFiles/cpp_learning_opengl.dir/src/shader.cpp.o"

# External object files for target cpp_learning_opengl
cpp_learning_opengl_EXTERNAL_OBJECTS =

cpp_learning_opengl: CMakeFiles/cpp_learning_opengl.dir/src/main.cpp.o
cpp_learning_opengl: CMakeFiles/cpp_learning_opengl.dir/src/shader.cpp.o
cpp_learning_opengl: CMakeFiles/cpp_learning_opengl.dir/build.make
cpp_learning_opengl: /usr/lib/x86_64-linux-gnu/libSM.so
cpp_learning_opengl: /usr/lib/x86_64-linux-gnu/libICE.so
cpp_learning_opengl: /usr/lib/x86_64-linux-gnu/libX11.so
cpp_learning_opengl: /usr/lib/x86_64-linux-gnu/libXext.so
cpp_learning_opengl: /usr/lib/x86_64-linux-gnu/libOpenGL.so
cpp_learning_opengl: /usr/lib/x86_64-linux-gnu/libGLX.so
cpp_learning_opengl: /usr/lib/x86_64-linux-gnu/libGLU.so
cpp_learning_opengl: /usr/lib/x86_64-linux-gnu/libGLEW.so
cpp_learning_opengl: CMakeFiles/cpp_learning_opengl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/laurier/Dépôts Git/cpp-learning-opengl/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable cpp_learning_opengl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cpp_learning_opengl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cpp_learning_opengl.dir/build: cpp_learning_opengl

.PHONY : CMakeFiles/cpp_learning_opengl.dir/build

CMakeFiles/cpp_learning_opengl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cpp_learning_opengl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cpp_learning_opengl.dir/clean

CMakeFiles/cpp_learning_opengl.dir/depend:
	cd "/home/laurier/Dépôts Git/cpp-learning-opengl/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/laurier/Dépôts Git/cpp-learning-opengl" "/home/laurier/Dépôts Git/cpp-learning-opengl" "/home/laurier/Dépôts Git/cpp-learning-opengl/cmake-build-debug" "/home/laurier/Dépôts Git/cpp-learning-opengl/cmake-build-debug" "/home/laurier/Dépôts Git/cpp-learning-opengl/cmake-build-debug/CMakeFiles/cpp_learning_opengl.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/cpp_learning_opengl.dir/depend

