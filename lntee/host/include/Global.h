//
// Created by root on 9/3/19.
//
#include <openenclave/host.h>
#include "eEVM/common.h"
#include <iostream>

#ifndef EEVM_GLOBAL_H
#define EEVM_GLOBAL_H

//#define TEST_TRANSACTION_THROUGHPUT
// #define  HOST_MAIN

typedef struct {
    std::string ip;
    int port;
    std::string msg;
} MSG_connect;

class Global {
public:
    static std::string ip;
    static int port;
    static char pubkey[PUBKEY_LEN * 2 + 1];
    static char addr[ADDRESS_LEN * 2 + 1];
    static oe_enclave_t *enclave;
    static void from_hex(const char *src, char *target);

    static std::string to_hex(const unsigned char *data, size_t len);
};

#endif //EEVM_GLOBAL_H
