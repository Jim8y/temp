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
include lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/depend.make

# Include the progress variables for this target.
include lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/progress.make

# Include the compile flags for this target's objects.
include lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/flags.make

lib/mbedtls/tests/test_suite_gcm.aes128_en.c: ../lib/mbedtls/tests/scripts/generate_test_code.py
lib/mbedtls/tests/test_suite_gcm.aes128_en.c: lib/mbedtls/library/libmbedtls.a
lib/mbedtls/tests/test_suite_gcm.aes128_en.c: ../lib/mbedtls/tests/suites/helpers.function
lib/mbedtls/tests/test_suite_gcm.aes128_en.c: ../lib/mbedtls/tests/suites/main_test.function
lib/mbedtls/tests/test_suite_gcm.aes128_en.c: ../lib/mbedtls/tests/suites/host_test.function
lib/mbedtls/tests/test_suite_gcm.aes128_en.c: ../lib/mbedtls/tests/suites/test_suite_gcm.function
lib/mbedtls/tests/test_suite_gcm.aes128_en.c: ../lib/mbedtls/tests/suites/test_suite_gcm.aes128_en.data
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating test_suite_gcm.aes128_en.c"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/tests && /usr/bin/python3 /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/tests/scripts/generate_test_code.py -f /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/tests/suites/test_suite_gcm.function -d /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/tests/suites/test_suite_gcm.aes128_en.data -t /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/tests/suites/main_test.function -p /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/tests/suites/host_test.function -s /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/tests/suites --helpers-file /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/tests/suites/helpers.function -o .

lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/test_suite_gcm.aes128_en.c.o: lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/flags.make
lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/test_suite_gcm.aes128_en.c.o: lib/mbedtls/tests/test_suite_gcm.aes128_en.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/test_suite_gcm.aes128_en.c.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_suite_gcm.aes128_en.dir/test_suite_gcm.aes128_en.c.o   -c /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/tests/test_suite_gcm.aes128_en.c

lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/test_suite_gcm.aes128_en.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_suite_gcm.aes128_en.dir/test_suite_gcm.aes128_en.c.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/tests/test_suite_gcm.aes128_en.c > CMakeFiles/test_suite_gcm.aes128_en.dir/test_suite_gcm.aes128_en.c.i

lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/test_suite_gcm.aes128_en.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_suite_gcm.aes128_en.dir/test_suite_gcm.aes128_en.c.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/tests && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/tests/test_suite_gcm.aes128_en.c -o CMakeFiles/test_suite_gcm.aes128_en.dir/test_suite_gcm.aes128_en.c.s

# Object files for target test_suite_gcm.aes128_en
test_suite_gcm_aes128_en_OBJECTS = \
"CMakeFiles/test_suite_gcm.aes128_en.dir/test_suite_gcm.aes128_en.c.o"

# External object files for target test_suite_gcm.aes128_en
test_suite_gcm_aes128_en_EXTERNAL_OBJECTS =

lib/mbedtls/tests/test_suite_gcm.aes128_en: lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/test_suite_gcm.aes128_en.c.o
lib/mbedtls/tests/test_suite_gcm.aes128_en: lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/build.make
lib/mbedtls/tests/test_suite_gcm.aes128_en: lib/mbedtls/library/libmbedtls.a
lib/mbedtls/tests/test_suite_gcm.aes128_en: lib/mbedtls/library/libmbedx509.a
lib/mbedtls/tests/test_suite_gcm.aes128_en: lib/mbedtls/library/libmbedcrypto.a
lib/mbedtls/tests/test_suite_gcm.aes128_en: lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable test_suite_gcm.aes128_en"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_suite_gcm.aes128_en.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/build: lib/mbedtls/tests/test_suite_gcm.aes128_en

.PHONY : lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/build

lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/clean:
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_suite_gcm.aes128_en.dir/cmake_clean.cmake
.PHONY : lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/clean

lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/depend: lib/mbedtls/tests/test_suite_gcm.aes128_en.c
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sgx/CLionProjects/LNTEESGX /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/tests /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/tests /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/mbedtls/tests/CMakeFiles/test_suite_gcm.aes128_en.dir/depend

