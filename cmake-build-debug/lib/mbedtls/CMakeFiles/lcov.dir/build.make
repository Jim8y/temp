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

# Utility rule file for lcov.

# Include the progress variables for this target.
include lib/mbedtls/CMakeFiles/lcov.dir/progress.make

lib/mbedtls/CMakeFiles/lcov:
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls && rm -rf Coverage
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls && lcov --capture --initial --directory library/CMakeFiles/mbedtls.dir -o files.info
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls && lcov --capture --directory library/CMakeFiles/mbedtls.dir -o tests.info
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls && lcov --add-tracefile files.info --add-tracefile tests.info -o all.info
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls && lcov --remove all.info -o final.info '*.h'
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls && gendesc tests/Descriptions.txt -o descriptions
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls && genhtml --title mbed\ TLS --description-file descriptions --keep-descriptions --legend --no-branch-coverage -o Coverage final.info
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls && rm -f files.info tests.info all.info final.info descriptions

lcov: lib/mbedtls/CMakeFiles/lcov
lcov: lib/mbedtls/CMakeFiles/lcov.dir/build.make

.PHONY : lcov

# Rule to build all files generated by this target.
lib/mbedtls/CMakeFiles/lcov.dir/build: lcov

.PHONY : lib/mbedtls/CMakeFiles/lcov.dir/build

lib/mbedtls/CMakeFiles/lcov.dir/clean:
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls && $(CMAKE_COMMAND) -P CMakeFiles/lcov.dir/cmake_clean.cmake
.PHONY : lib/mbedtls/CMakeFiles/lcov.dir/clean

lib/mbedtls/CMakeFiles/lcov.dir/depend:
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sgx/CLionProjects/LNTEESGX /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/CMakeFiles/lcov.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/mbedtls/CMakeFiles/lcov.dir/depend

