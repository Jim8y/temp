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
include CMakeFiles/LNTEE_ENCLAVE.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LNTEE_ENCLAVE.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LNTEE_ENCLAVE.dir/flags.make

lntee_t.h: ../lntee/lntee.edl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating lntee_t.h, lntee_t.c, lntee_args.h"
	/opt/openenclave/bin/oeedger8r --trusted /home/sgx/CLionProjects/LNTEESGX/lntee/lntee.edl

lntee_t.c: lntee_t.h
	@$(CMAKE_COMMAND) -E touch_nocreate lntee_t.c

lntee_args.h: lntee_t.h
	@$(CMAKE_COMMAND) -E touch_nocreate lntee_args.h

CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.o: CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.o: lntee_t.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.o   -c /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee_t.c

CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee_t.c > CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.i

CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee_t.c -o CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.s

CMakeFiles/LNTEE_ENCLAVE.dir/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.o: CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
CMakeFiles/LNTEE_ENCLAVE.dir/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.o: ../lib/eEVM/3rdparty/intx/lib/intx/div.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/LNTEE_ENCLAVE.dir/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.o -c /home/sgx/CLionProjects/LNTEESGX/lib/eEVM/3rdparty/intx/lib/intx/div.cpp

CMakeFiles/LNTEE_ENCLAVE.dir/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LNTEE_ENCLAVE.dir/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lib/eEVM/3rdparty/intx/lib/intx/div.cpp > CMakeFiles/LNTEE_ENCLAVE.dir/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.i

CMakeFiles/LNTEE_ENCLAVE.dir/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lib/eEVM/3rdparty/intx/lib/intx/div.cpp -o CMakeFiles/LNTEE_ENCLAVE.dir/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.s

# Object files for target LNTEE_ENCLAVE
LNTEE_ENCLAVE_OBJECTS = \
"CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.o" \
"CMakeFiles/LNTEE_ENCLAVE.dir/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.o"

# External object files for target LNTEE_ENCLAVE
LNTEE_ENCLAVE_EXTERNAL_OBJECTS =

LNTEE_ENCLAVE: CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.o
LNTEE_ENCLAVE: CMakeFiles/LNTEE_ENCLAVE.dir/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.o
LNTEE_ENCLAVE: CMakeFiles/LNTEE_ENCLAVE.dir/build.make
LNTEE_ENCLAVE: lib/eEVM/libeevm.a
LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/liboeenclave.a
LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/liboecryptombed.a
LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/libmbedtls.a
LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/libmbedx509.a
LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/libmbedcrypto.a
LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/liboelibc.a
LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/liboesyscall.a
LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/liboecore.a
LNTEE_ENCLAVE: CMakeFiles/LNTEE_ENCLAVE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable LNTEE_ENCLAVE"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LNTEE_ENCLAVE.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LNTEE_ENCLAVE.dir/build: LNTEE_ENCLAVE

.PHONY : CMakeFiles/LNTEE_ENCLAVE.dir/build

CMakeFiles/LNTEE_ENCLAVE.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LNTEE_ENCLAVE.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LNTEE_ENCLAVE.dir/clean

CMakeFiles/LNTEE_ENCLAVE.dir/depend: lntee_t.h
CMakeFiles/LNTEE_ENCLAVE.dir/depend: lntee_t.c
CMakeFiles/LNTEE_ENCLAVE.dir/depend: lntee_args.h
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sgx/CLionProjects/LNTEESGX /home/sgx/CLionProjects/LNTEESGX /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles/LNTEE_ENCLAVE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LNTEE_ENCLAVE.dir/depend

