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
include lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/depend.make

# Include the progress variables for this target.
include lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/progress.make

# Include the compile flags for this target's objects.
include lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/flags.make

lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o: lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/flags.make
lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o: ../lib/mbedtls/programs/aes/crypt_and_hash.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/aes && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o   -c /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/programs/aes/crypt_and_hash.c

lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/aes && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/programs/aes/crypt_and_hash.c > CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.i

lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/aes && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/programs/aes/crypt_and_hash.c -o CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.s

# Object files for target crypt_and_hash
crypt_and_hash_OBJECTS = \
"CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o"

# External object files for target crypt_and_hash
crypt_and_hash_EXTERNAL_OBJECTS =

lib/mbedtls/programs/aes/crypt_and_hash: lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/crypt_and_hash.c.o
lib/mbedtls/programs/aes/crypt_and_hash: lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/build.make
lib/mbedtls/programs/aes/crypt_and_hash: lib/mbedtls/library/libmbedcrypto.a
lib/mbedtls/programs/aes/crypt_and_hash: lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable crypt_and_hash"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/aes && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/crypt_and_hash.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/build: lib/mbedtls/programs/aes/crypt_and_hash

.PHONY : lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/build

lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/clean:
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/aes && $(CMAKE_COMMAND) -P CMakeFiles/crypt_and_hash.dir/cmake_clean.cmake
.PHONY : lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/clean

lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/depend:
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sgx/CLionProjects/LNTEESGX /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/programs/aes /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/aes /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/mbedtls/programs/aes/CMakeFiles/crypt_and_hash.dir/depend
