add_custom_command(OUTPUT lntee_u.h lntee_u.c lntee_args.h
        DEPENDS ${PROJECT_SOURCE_DIR}/lntee/lntee.edl edger8r
        COMMAND edger8r --untrusted ${PROJECT_SOURCE_DIR}/lntee/lntee.edl --search-path /home/sgx/openenclave_qemu/sdk/include)

                  
file(GLOB LNTEE_HOST_SRCS
        ${PROJECT_SOURCE_DIR}/lntee/host/src/*.cpp
        )

add_executable(LNTEE_HOST
        ${LNTEE_HOST_SRCS}
        ${CMAKE_CURRENT_BINARY_DIR}/lntee_u.c)

target_include_directories(LNTEE_HOST PRIVATE
        ${PROJECT_SOURCE_DIR}/lib/eEVM/3rdparty
        ${PROJECT_SOURCE_DIR}/lib/eEVM/include
        ${PROJECT_SOURCE_DIR}/lib/libf2f/include
        ${CMAKE_CURRENT_BINARY_DIR}
        ${PROJECT_SOURCE_DIR}/lntee/host/include
        )

target_link_libraries(LNTEE_HOST eevm f2f oehost)
