cmake_minimum_required(VERSION 3.15)
project("LNTEESGX" LANGUAGES C CXX)

if (LVI_MITIGATION MATCHES ControlFlow)
    # Configure the cmake to use customized compilation toolchain.
    # This package has to be added before `project()`.
    find_package(OpenEnclave-LVI-Mitigation CONFIG REQUIRED)
endif()

# Currently the `OpenEnclave` package depends on `project()`.
find_package(OpenEnclave CONFIG REQUIRED)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_BUILD_TYPE Release)

#set(CMAKE_CXX_FLAGS "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3")


add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/lib/eEVM/)
add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/lib/libf2f)

#set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -nostdinc -m64 -fPIC -I/opt/openenclave/include/openenclave/3rdparty/libcxx -I/opt/openenclave/include/openenclave/3rdparty/libc -I/opt/openenclave/include/openenclave/3rdparty -I/opt/openenclave/include")
#set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -nostdinc -m64 -fPIC -I/opt/openenclave/include/openenclave/3rdparty/libc -I/opt/openenclave/include/openenclave/3rdparty -I/opt/openenclave/include")
#set(CMAKE_EXE_LINKER_FLAGS "-L/opt/openenclave/lib/openenclave/enclave -nostdlib -nodefaultlibs -nostartfiles -Wl,--no-undefined -Wl,-Bstatic -Wl,-Bsymbolic -Wl,--export-dynamic -Wl,-pie -Wl,--build-id -loeenclave -lmbedx509 -lmbedcrypto -loelibcxx -loelibc -loecore ")
#

add_subdirectory(lntee/enclave)
add_subdirectory(lntee/host)

#target_compile_definitions(LNTEE PUBLIC OE_API_VERSION=2)

add_custom_target(LNTEE DEPENDS LNTEE_ENCLAVE LNTEE_HOST sign

        )