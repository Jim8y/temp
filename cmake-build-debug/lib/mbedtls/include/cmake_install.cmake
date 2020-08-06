# Install script for directory: /home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mbedtls" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/aes.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/aesni.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/arc4.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/aria.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/asn1.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/asn1write.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/base64.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/bignum.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/blowfish.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/bn_mul.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/camellia.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ccm.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/certs.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/chacha20.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/chachapoly.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/check_config.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/cipher.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/cipher_internal.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/cmac.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/compat-1.3.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/config.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ctr_drbg.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/debug.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/des.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/dhm.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ecdh.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ecdsa.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ecjpake.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ecp.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ecp_internal.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/entropy.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/entropy_poll.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/error.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/gcm.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/havege.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/hkdf.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/hmac_drbg.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/md.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/md2.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/md4.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/md5.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/md_internal.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/memory_buffer_alloc.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/net.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/net_sockets.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/nist_kw.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/oid.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/padlock.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/pem.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/pk.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/pk_internal.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/pkcs11.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/pkcs12.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/pkcs5.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/platform.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/platform_time.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/platform_util.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/poly1305.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/psa_util.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ripemd160.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/rsa.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/rsa_internal.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/sha1.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/sha256.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/sha512.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ssl.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ssl_cache.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ssl_ciphersuites.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ssl_cookie.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ssl_internal.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/ssl_ticket.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/threading.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/timing.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/version.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/x509.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/x509_crl.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/x509_crt.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/x509_csr.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/mbedtls/xtea.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/psa" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/psa/crypto.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/psa/crypto_accel_driver.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/psa/crypto_compat.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/psa/crypto_driver_common.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/psa/crypto_entropy_driver.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/psa/crypto_extra.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/psa/crypto_platform.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/psa/crypto_se_driver.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/psa/crypto_sizes.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/psa/crypto_struct.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/psa/crypto_types.h"
    "/home/sgx/CLionProjects/LNTEESGX/lib/mbedtls/include/psa/crypto_values.h"
    )
endif()

