# Install script for directory: /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/programs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/aes/cmake_install.cmake")
  include("/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/fuzz/cmake_install.cmake")
  include("/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/hash/cmake_install.cmake")
  include("/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/pkey/cmake_install.cmake")
  include("/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/psa/cmake_install.cmake")
  include("/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/random/cmake_install.cmake")
  include("/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/ssl/cmake_install.cmake")
  include("/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/test/cmake_install.cmake")
  include("/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/x509/cmake_install.cmake")
  include("/home/sgx/CLionProjects/LNTEESGX/cmake-build-debug/lib/mbedtls/programs/util/cmake_install.cmake")

endif()

