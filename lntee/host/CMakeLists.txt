set(EEVM_INCLUDE_DIRS
        ${CMAKE_SOURCE_DIR}/lib/eEVM/3rdparty
        ${CMAKE_SOURCE_DIR}/lib/eEVM/include
        ${CMAKE_SOURCE_DIR}/lib/libf2f/include
        )

#SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -DASIO_STANDALONE -pthread")

file(GLOB LNTEE_HOST_SRCS
        ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
        )

set(LNTEE_HOST_SRCS ${LNTEE_HOST_SRCS})

add_custom_command(OUTPUT lntee_u.h lntee_u.c lntee_args.h
        DEPENDS ${CMAKE_SOURCE_DIR}/lntee/lntee.edl
        COMMAND openenclave::oeedger8r --untrusted ${CMAKE_SOURCE_DIR}/lntee/lntee.edl)

# LNTEE_HOST
################################################################
add_executable(LNTEE_HOST  ${LNTEE_HOST_SRCS} ${CMAKE_CURRENT_BINARY_DIR}/lntee_u.c)

target_include_directories(LNTEE_HOST PRIVATE
        # Needed for the generated file lntee_u.h
        ${EEVM_INCLUDE_DIRS}
        ${CMAKE_CURRENT_SOURCE_DIR}/include
        ${CMAKE_CURRENT_BINARY_DIR}
        )
target_link_libraries(LNTEE_HOST eevm f2f openenclave::oehost)