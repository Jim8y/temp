set(EEVM_INCLUDE_DIRS
        ${CMAKE_SOURCE_DIR}/lib/eEVM/3rdparty
        ${CMAKE_SOURCE_DIR}/lib/eEVM/include
        )

file(GLOB LNTEE_ENCLAVE_SRCS
        ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
        )

set(LNTEE_ENCLAVE_SRCS ${LNTEE_ENCLAVE_SRCS})


# Use the edger8r to generate C bindings from the EDL file.
add_custom_command(OUTPUT lntee_t.h lntee_t.c lntee_args.h
        DEPENDS ${CMAKE_SOURCE_DIR}/lntee/lntee.edl
        COMMAND openenclave::oeedger8r --trusted ${CMAKE_SOURCE_DIR}/lntee/lntee.edl)

# LNTEE_ENCLAVE
################################################################

add_executable(LNTEE_ENCLAVE ${LNTEE_ENCLAVE_SRCS} ${CMAKE_CURRENT_BINARY_DIR}/lntee_t.c)

target_compile_definitions(LNTEE_ENCLAVE PUBLIC OE_API_VERSION=2)

# Need for the generated file lntee_t.h
target_include_directories(LNTEE_ENCLAVE PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
        ${EEVM_INCLUDE_DIRS}
        ${CMAKE_CURRENT_BINARY_DIR}
        ${CMAKE_CURRENT_SOURCE_DIR}/include
        )

target_link_libraries(LNTEE_ENCLAVE PUBLIC
        eevm
        $<$<PLATFORM_ID:Linux>:-Wl,--require-defined=__oe_ecalls_table>
        openenclave::oeenclave openenclave::oelibcxx)

# Generate key
add_custom_command(OUTPUT private.pem public.pem
        COMMAND openssl genrsa -out private.pem -3 3072
        COMMAND openssl rsa -in private.pem -pubout -out public.pem)

# Sign enclave
add_custom_command(OUTPUT LNTEE_ENCLAVE.signed
        DEPENDS LNTEE_ENCLAVE lntee.conf private.pem
        COMMAND openenclave::oesign sign -e $<TARGET_FILE:LNTEE_ENCLAVE> -c ${CMAKE_CURRENT_SOURCE_DIR}/lntee.conf -k private.pem)

add_custom_target(sign ALL DEPENDS LNTEE_ENCLAVE.signed)

#add_executable(LNTEESGX main.cpp)