# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
RM = /home/sgx/Downloads/clion-2020.1.1/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sgx/CLionProjects/LNTEESGX

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug

# Include any dependencies generated for this target.
include lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/depend.make

# Include the progress variables for this target.
include lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/progress.make

# Include the compile flags for this target's objects.
include lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/flags.make

lntee/enclave/lntee_t.h: ../lntee/lntee.edl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating lntee_t.h, lntee_t.c, lntee_args.h"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /opt/openenclave/bin/oeedger8r --trusted /home/sgx/CLionProjects/LNTEESGX/lntee/lntee.edl

lntee/enclave/lntee_t.c: lntee/enclave/lntee_t.h
	@$(CMAKE_COMMAND) -E touch_nocreate lntee/enclave/lntee_t.c

lntee/enclave/lntee_args.h: lntee/enclave/lntee_t.h
	@$(CMAKE_COMMAND) -E touch_nocreate lntee/enclave/lntee_args.h

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/dispatcher.cpp.o: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/dispatcher.cpp.o: ../lntee/enclave/src/dispatcher.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/dispatcher.cpp.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/src/dispatcher.cpp.o -c /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/dispatcher.cpp

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/dispatcher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LNTEE_ENCLAVE.dir/src/dispatcher.cpp.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/dispatcher.cpp > CMakeFiles/LNTEE_ENCLAVE.dir/src/dispatcher.cpp.i

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/dispatcher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/src/dispatcher.cpp.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/dispatcher.cpp -o CMakeFiles/LNTEE_ENCLAVE.dir/src/dispatcher.cpp.s

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_aes.cpp.o: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_aes.cpp.o: ../lntee/enclave/src/eth_aes.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_aes.cpp.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_aes.cpp.o -c /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/eth_aes.cpp

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_aes.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_aes.cpp.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/eth_aes.cpp > CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_aes.cpp.i

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_aes.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_aes.cpp.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/eth_aes.cpp -o CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_aes.cpp.s

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdh.cpp.o: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdh.cpp.o: ../lntee/enclave/src/eth_ecdh.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdh.cpp.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdh.cpp.o -c /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/eth_ecdh.cpp

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdh.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdh.cpp.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/eth_ecdh.cpp > CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdh.cpp.i

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdh.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdh.cpp.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/eth_ecdh.cpp -o CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdh.cpp.s

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdsa.cpp.o: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdsa.cpp.o: ../lntee/enclave/src/eth_ecdsa.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdsa.cpp.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdsa.cpp.o -c /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/eth_ecdsa.cpp

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdsa.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdsa.cpp.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/eth_ecdsa.cpp > CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdsa.cpp.i

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdsa.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdsa.cpp.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/eth_ecdsa.cpp -o CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdsa.cpp.s

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecp.cpp.o: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecp.cpp.o: ../lntee/enclave/src/eth_ecp.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecp.cpp.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecp.cpp.o -c /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/eth_ecp.cpp

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecp.cpp.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/eth_ecp.cpp > CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecp.cpp.i

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecp.cpp.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/eth_ecp.cpp -o CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecp.cpp.s

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/keys.cpp.o: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/keys.cpp.o: ../lntee/enclave/src/keys.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/keys.cpp.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/src/keys.cpp.o -c /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/keys.cpp

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/keys.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LNTEE_ENCLAVE.dir/src/keys.cpp.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/keys.cpp > CMakeFiles/LNTEE_ENCLAVE.dir/src/keys.cpp.i

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/keys.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/src/keys.cpp.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/keys.cpp -o CMakeFiles/LNTEE_ENCLAVE.dir/src/keys.cpp.s

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/main.cpp.o: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/main.cpp.o: ../lntee/enclave/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/main.cpp.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/src/main.cpp.o -c /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/main.cpp

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LNTEE_ENCLAVE.dir/src/main.cpp.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/main.cpp > CMakeFiles/LNTEE_ENCLAVE.dir/src/main.cpp.i

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/src/main.cpp.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/main.cpp -o CMakeFiles/LNTEE_ENCLAVE.dir/src/main.cpp.s

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/sgx_contract.cpp.o: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/sgx_contract.cpp.o: ../lntee/enclave/src/sgx_contract.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/sgx_contract.cpp.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/src/sgx_contract.cpp.o -c /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/sgx_contract.cpp

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/sgx_contract.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LNTEE_ENCLAVE.dir/src/sgx_contract.cpp.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/sgx_contract.cpp > CMakeFiles/LNTEE_ENCLAVE.dir/src/sgx_contract.cpp.i

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/sgx_contract.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/src/sgx_contract.cpp.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/sgx_contract.cpp -o CMakeFiles/LNTEE_ENCLAVE.dir/src/sgx_contract.cpp.s

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/wallet.cpp.o: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/wallet.cpp.o: ../lntee/enclave/src/wallet.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/wallet.cpp.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/src/wallet.cpp.o -c /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/wallet.cpp

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/wallet.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LNTEE_ENCLAVE.dir/src/wallet.cpp.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/wallet.cpp > CMakeFiles/LNTEE_ENCLAVE.dir/src/wallet.cpp.i

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/wallet.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/src/wallet.cpp.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lntee/enclave/src/wallet.cpp -o CMakeFiles/LNTEE_ENCLAVE.dir/src/wallet.cpp.s

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.o: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.o: lntee/enclave/lntee_t.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.o   -c /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave/lntee_t.c

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave/lntee_t.c > CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.i

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave/lntee_t.c -o CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.s

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/__/__/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.o: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/flags.make
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/__/__/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.o: ../lib/eEVM/3rdparty/intx/lib/intx/div.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/__/__/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.o"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LNTEE_ENCLAVE.dir/__/__/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.o -c /home/sgx/CLionProjects/LNTEESGX/lib/eEVM/3rdparty/intx/lib/intx/div.cpp

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/__/__/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LNTEE_ENCLAVE.dir/__/__/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.i"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sgx/CLionProjects/LNTEESGX/lib/eEVM/3rdparty/intx/lib/intx/div.cpp > CMakeFiles/LNTEE_ENCLAVE.dir/__/__/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.i

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/__/__/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LNTEE_ENCLAVE.dir/__/__/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.s"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sgx/CLionProjects/LNTEESGX/lib/eEVM/3rdparty/intx/lib/intx/div.cpp -o CMakeFiles/LNTEE_ENCLAVE.dir/__/__/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.s

# Object files for target LNTEE_ENCLAVE
LNTEE_ENCLAVE_OBJECTS = \
"CMakeFiles/LNTEE_ENCLAVE.dir/src/dispatcher.cpp.o" \
"CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_aes.cpp.o" \
"CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdh.cpp.o" \
"CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdsa.cpp.o" \
"CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecp.cpp.o" \
"CMakeFiles/LNTEE_ENCLAVE.dir/src/keys.cpp.o" \
"CMakeFiles/LNTEE_ENCLAVE.dir/src/main.cpp.o" \
"CMakeFiles/LNTEE_ENCLAVE.dir/src/sgx_contract.cpp.o" \
"CMakeFiles/LNTEE_ENCLAVE.dir/src/wallet.cpp.o" \
"CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.o" \
"CMakeFiles/LNTEE_ENCLAVE.dir/__/__/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.o"

# External object files for target LNTEE_ENCLAVE
LNTEE_ENCLAVE_EXTERNAL_OBJECTS =

lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/dispatcher.cpp.o
lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_aes.cpp.o
lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdh.cpp.o
lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecdsa.cpp.o
lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/eth_ecp.cpp.o
lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/keys.cpp.o
lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/main.cpp.o
lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/sgx_contract.cpp.o
lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/src/wallet.cpp.o
lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/lntee_t.c.o
lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/__/__/lib/eEVM/3rdparty/intx/lib/intx/div.cpp.o
lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/build.make
lntee/enclave/LNTEE_ENCLAVE: lib/eEVM/libeevm.a
lntee/enclave/LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/liboeenclave.a
lntee/enclave/LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/liboelibcxx.a
lntee/enclave/LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/liboecryptombed.a
lntee/enclave/LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/libmbedtls.a
lntee/enclave/LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/libmbedx509.a
lntee/enclave/LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/libmbedcrypto.a
lntee/enclave/LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/liboelibc.a
lntee/enclave/LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/liboesyscall.a
lntee/enclave/LNTEE_ENCLAVE: /opt/openenclave/lib/openenclave/enclave/liboecore.a
lntee/enclave/LNTEE_ENCLAVE: lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable LNTEE_ENCLAVE"
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LNTEE_ENCLAVE.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/build: lntee/enclave/LNTEE_ENCLAVE

.PHONY : lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/build

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/clean:
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave && $(CMAKE_COMMAND) -P CMakeFiles/LNTEE_ENCLAVE.dir/cmake_clean.cmake
.PHONY : lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/clean

lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/depend: lntee/enclave/lntee_t.h
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/depend: lntee/enclave/lntee_t.c
lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/depend: lntee/enclave/lntee_args.h
	cd /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sgx/CLionProjects/LNTEESGX /home/sgx/CLionProjects/LNTEESGX/lntee/enclave /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lntee/enclave/CMakeFiles/LNTEE_ENCLAVE.dir/depend
