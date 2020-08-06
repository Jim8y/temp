cmake_minimum_required(VERSION 3.10)
project(eevm)
find_package(OpenEnclave CONFIG REQUIRED)
set(CMAKE_CXX_STANDARD 17)

# set(Boost_ADDITIONAL_VERSIONS "1.67" "1.67.0")
# find_package(Boost 1.60.0 REQUIRED)
set(CMAKE_BUILD_TYPE Release)

set(CMAKE_CXX_FLAGS "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")

# Set Linux compiler options
add_compile_options(-Wall)


# -Werror)
if ("${CMAKE_CXX_COMPILER_ID}" STREQUAL "GNU")
    separate_arguments(COVERAGE_FLAGS UNIX_COMMAND "--coverage -fprofile-arcs -ftest-coverage")
    set(PLATFORM_SPECIFIC_TEST_LIBS "gcov")
else ()
    separate_arguments(COVERAGE_FLAGS UNIX_COMMAND "-fprofile-instr-generate -fcoverage-mapping")
    set(PLATFORM_SPECIFIC_TEST_LIBS "-fprofile-instr-generate")
endif ()

file(GLOB KECCAK_SOURCES
        3rdparty/keccak/*.c
        )

add_subdirectory(3rdparty)

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Options 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
option(RECORD_TRACE "Record a detailed trace of EVM execution during test runs" OFF)
if (RECORD_TRACE)
    add_definitions(-DRECORD_TRACE)
endif (RECORD_TRACE)


# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Common variables 
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
set(EEVM_INCLUDE_DIRS
        ${CMAKE_CURRENT_SOURCE_DIR}/3rdparty
        ${CMAKE_CURRENT_SOURCE_DIR}/include
        )


set(EEVM_CORE_SRCS
        src/disassembler.cpp
        src/processor.cpp
        src/stack.cpp
        src/common.cpp
        src/encoding.cpp
        src/transaction.cpp
        src/util.cpp
        src/simple/simpleaccount.cpp
        src/simple/simpleglobalstate.cpp
        src/simple/simplestorage.cpp)

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Libraries
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
add_library(eevm STATIC
        ${EEVM_CORE_SRCS}
        ${KECCAK_SOURCES}
        )


target_compile_definitions(eevm PRIVATE
        INSIDE_ENCLAVE
        _LIBCPP_HAS_THREAD_API_PTHREAD)

set(CMAKE_C_FLAGS "${SGX_COMMON_CFLAGS} ${CMAKE_C_FLAGS} \
    -Wall -Werror=return-type -nostdinc -fvisibility=hidden -fpie -fstack-protector")

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${CMAKE_C_FLAGS} \
#    -std=c++17 -nostdinc++")


target_compile_options(eevm PRIVATE
        -Wno-undef
        -nostdlib
        -nodefaultlibs
        -nostartfiles
        -std=c++11
        -nostdinc++
        -U__linux__)

target_include_directories(eevm SYSTEM PRIVATE
        ${EEVM_INCLUDE_DIRS}
        )

target_link_libraries(eevm
        intx::intx
        openenclave::libcxx
        sgx_tcxx
        sgx_tstdc
        )

set_property(TARGET eevm PROPERTY POSITION_INDEPENDENT_CODE ON)