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
CMAKE_COMMAND = /home/sgx/Downloads/clion-2020.1.1/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/sgx/Downloads/clion-2020.1.1/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sgx/CLionProjects/LNTEESGX

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug

# Include any dependencies generated for this target.
include lib/mbedtls/programs/test/CMakeFiles/selftest.dir/depend.make

# Include the progress variables for this target.
include lib/mbedtls/programs/test/CMakeFiles/selftest.dir/progress.make

# Include the compile flags for this target's objects.
include lib/mbedtls/programs/test/CMakeFiles/selftest.dir/flags.make

lib/mbedtls/programs/test/CMakeFiles/selftest.dir/selftest.c.o: lib/mbedtls/programs/test/CMakeFiles/selftest.dir/flags.make
lib/mbedtls/programs/test/CMakeFiles/selftest.dir/selftest.c.o: ../lib/mbedtls/programs/test/selftest.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/mbedtls/programs/test/CMakeFiles/selftest.dir/selftest.c.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/selftest.dir/selftest.c.o   -c /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/programs/test/selftest.c

lib/mbedtls/programs/test/CMakeFiles/selftest.dir/selftest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/selftest.dir/selftest.c.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/programs/test/selftest.c > CMakeFiles/selftest.dir/selftest.c.i

lib/mbedtls/programs/test/CMakeFiles/selftest.dir/selftest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/selftest.dir/selftest.c.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/test && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/programs/test/selftest.c -o CMakeFiles/selftest.dir/selftest.c.s

# Object files for target selftest
selftest_OBJECTS = \
"CMakeFiles/selftest.dir/selftest.c.o"

# External object files for target selftest
selftest_EXTERNAL_OBJECTS =

lib/mbedtls/programs/test/selftest: lib/mbedtls/programs/test/CMakeFiles/selftest.dir/selftest.c.o
lib/mbedtls/programs/test/selftest: lib/mbedtls/programs/test/CMakeFiles/selftest.dir/build.make
lib/mbedtls/programs/test/selftest: lib/mbedtls/library/libmbedtls.a
lib/mbedtls/programs/test/selftest: lib/mbedtls/library/libmbedx509.a
lib/mbedtls/programs/test/selftest: lib/mbedtls/library/libmbedcrypto.a
lib/mbedtls/programs/test/selftest: lib/mbedtls/programs/test/CMakeFiles/selftest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable selftest"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/selftest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/mbedtls/programs/test/CMakeFiles/selftest.dir/build: lib/mbedtls/programs/test/selftest

.PHONY : lib/mbedtls/programs/test/CMakeFiles/selftest.dir/build

lib/mbedtls/programs/test/CMakeFiles/selftest.dir/clean:
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/test && $(CMAKE_COMMAND) -P CMakeFiles/selftest.dir/cmake_clean.cmake
.PHONY : lib/mbedtls/programs/test/CMakeFiles/selftest.dir/clean

lib/mbedtls/programs/test/CMakeFiles/selftest.dir/depend:
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sgx/CLionProjects/LNTEESGX /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/programs/test /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/test /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/test/CMakeFiles/selftest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/mbedtls/programs/test/CMakeFiles/selftest.dir/depend

