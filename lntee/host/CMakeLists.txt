
file(GLOB LNTEE_HOST_SRCS
        ${CMAKE_SOURCE_DIR}/lntee/host/src/*.cpp
        )

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# Program
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

add_custom_command(OUTPUT lntee_u.h lntee_u.c lntee_args.h
        DEPENDS ${CMAKE_SOURCE_DIR}/lntee/lntee.edl
        COMMAND openenclave::oeedger8r --untrusted ${CMAKE_SOURCE_DIR}/lntee/lntee.edl)

add_executable(LNTEE_HOST
        ${LNTEE_HOST_SRCS}
        ${CMAKE_BINARY_DIR}/lntee_u.c)

target_include_directories(LNTEE_HOST PRIVATE
        ${EEVM_INCLUDE_DIRS}
        ${CMAKE_BINARY_DIR}
        ${CMAKE_SOURCE_DIR}/lntee/host/include
        )

target_link_libraries(LNTEE_HOST eevm f2f openenclave::oehost)

add_custom_command(TARGET LNTEE_HOST
        POST_BUILD
        COMMAND scp -r /home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/ fog@40.76.59.33:cmake-build-debug
        COMMAND scp -r /host/sgx/CLionProjects/LNTEESGX/cmake-build-debug/ fog@40.91.198.207:cmake-build-debug)