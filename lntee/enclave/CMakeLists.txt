
add_custom_command(OUTPUT lntee_t.h lntee_t.c lntee_args.h
        DEPENDS ${PROJECT_SOURCE_DIR}/lntee/lntee.edl
        COMMAND edger8r --trusted ${PROJECT_SOURCE_DIR}/lntee/lntee.edl)


aux_source_directory(${PROJECT_SOURCE_DIR}/lib/eEVM/src  EEVM_SOURCE1)
aux_source_directory(${PROJECT_SOURCE_DIR}/lib/eEVM/src/simple EEVM_SIMPLE_SOURCE)
aux_source_directory(${PROJECT_SOURCE_DIR}/lib/eEVM/3rdparty/fmt 3RD_PARTY_FMT)
aux_source_directory(${PROJECT_SOURCE_DIR}/lib/eEVM/3rdparty/intx/lib/intx 3RD_PARTY_INTX1)
aux_source_directory(${PROJECT_SOURCE_DIR}/lib/eEVM/3rdparty/intx/include/intx 3RD_PARTY_INTX2)
aux_source_directory(${PROJECT_SOURCE_DIR}/lib/eEVM/3rdparty/keccak 3RD_PARTY_KECCAK)
aux_source_directory(${PROJECT_SOURCE_DIR}/lib/eEVM/3rdparty/nlohmann 3RD_PARTY_NLOHMANN)


#set(EEVM_INCLUDE_DIRS
#        ${CMAKE_CURRENT_SOURCE_DIR}/3rdparty
#        ${CMAKE_CURRENT_SOURCE_DIR}/include
#        )

#
#set(EEVM_SOURCE1
#        ${PROJECT_SOURCE_DIR}/lib/eEVM/src/disassembler.cpp
#        ${PROJECT_SOURCE_DIR}/lib/eEVM/src/processor.cpp
#        ${PROJECT_SOURCE_DIR}/lib/eEVM/src/stack.cpp
#        ${PROJECT_SOURCE_DIR}/lib/eEVM/src/common.cpp
#        ${PROJECT_SOURCE_DIR}/lib/eEVM/src/encoding.cpp
#        ${PROJECT_SOURCE_DIR}/lib/eEVM/src/transaction.cpp
#        ${PROJECT_SOURCE_DIR}/lib/eEVM/src/util.cpp
#        ${PROJECT_SOURCE_DIR}/lib/eEVM/src/simple/simpleaccount.cpp
#        ${PROJECT_SOURCE_DIR}/lib/eEVM/src/simple/simpleglobalstate.cpp
#        ${PROJECT_SOURCE_DIR}/lib/eEVM/src/simple/simplestorage.cpp)


file(GLOB LNTEE_ENCLAVE_SRCS
        ${PROJECT_SOURCE_DIR}/lntee/enclave/src/*.cpp
#        ${PROJECT_SOURCE_DIR}/lntee/enclave/main.cpp
        )

#target_compile_definitions(LNTEE_ENCLAVE PUBLIC OE_API_VERSION=2)

add_enclave(
        TARGET
        LNTEE_ENCLAVE
        UUID
        b843807a-e05c-423c-bcfb-1062cadb483f
        SOURCES
        ${LNTEE_ENCLAVE_SRCS}
        ${CMAKE_CURRENT_BINARY_DIR}/lntee_t.c
        ${PROJECT_SOURCE_DIR}/lib/eEVM/3rdparty/intx/include/intx/intx.hpp
        ${EEVM_SOURCE1}
        ${EEVM_SIMPLE_SOURCE}
        ${3RD_PARTY_FMT}
        ${3RD_PARTY_INTX1}
        ${3RD_PARTY_INTX2}
        ${3RD_PARTY_KECCAK}
        ${3RD_PARTY_NLOHMANN})

message(STATUS "CMAKE_CURRENT_BINARY_DIR = ${CMAKE_CURRENT_BINARY_DIR}")

enclave_include_directories(LNTEE_ENCLAVE PRIVATE
        ${PROJECT_SOURCE_DIR}/lib/eEVM/3rdparty
        ${PROJECT_SOURCE_DIR}/lib/eEVM/3rdparty/intx/include
        ${CMAKE_CURRENT_BINARY_DIR}
        ${PROJECT_SOURCE_DIR}/lib/eEVM/include
        ${PROJECT_SOURCE_DIR}/lntee/enclave/include/
        )

enclave_link_libraries(LNTEE_ENCLAVE oelibcxx)