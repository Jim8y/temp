#include "lntee_t.h"
//#include "eEVM/bigint.h"
//#include "eEVM/common.h"
//#include "eEVM/simple/simpleglobalstate.h"
//#include "eEVM/transaction.h"
#include "mbedtls/sha256.h"
#include "mbedtls/platform.h"
#include <random>
#include <stdio.h>
#include <map>
//#include <eEVM/debug.h>
#include <openenclave/enclave.h>

#define MAX_OPT_MESSAGE_LEN 128
#define IV_SIZE 16
#define SIGNATURE_LEN 32

typedef struct _sealed_data_t {
    size_t total_size;
    unsigned char signature[SIGNATURE_LEN];
    unsigned char opt_msg[MAX_OPT_MESSAGE_LEN];
    unsigned char iv[IV_SIZE];
    size_t key_info_size;
    size_t original_data_size;
    size_t encrypted_data_len;
    unsigned char encrypted_data[];
} sealed_data_t;


/**
 * Get random string
 * @param length size of the random string
 * @return
 */
char * random_string(size_t length) {
    return "";
}

/**
 * Generate an contract instance id
 */
int ecall_lntee_generate_contract_instance_id() { return 0; }

void join_new_participant(const char *contract_addr) {}

/**
 * Unseal data in enclave
 * @param sealed_data
 * @param sealed_data_size
 * @param data unsealed data
 * @param data_size
 * @return int result
 */
int ecall_lntee_unseal_data(
        sealed_data_t *sealed_data,
        size_t sealed_data_size,
        unsigned char **data,
        size_t *data_size) {
    return 0;
}

/**
 * Initialize the TEE account, if already generated,
 * will load from the enclave, otherwise create a new one
 * @param seed seed to create a new TEE account not necessary
 * @param pubkey TEE account pubkey
 * @param addr TEE account Addr
 * @return int
 */
int ecall_lntee_init_tee(const char *seed, const char *pubkey, const char *addr) {
    return 0;
}



/**
 * Send credit directly to counterpart
 * @param pubkey
 * @param amount
 * @param tx_str
 * @param tx_size
 */
void ecall_lntee_direct_send(const char *pubkey,
                             int amt,
                             char *tx) {

}

int ecall_lntee_direct_recv(const char *tx) {

    return -1;
}

/**
 * Process transactions from the host, should return the signed transaction
 * @param function_call
 * @param tx_str return signed tx
 */
void ecall_lntee_send(const char *function_call, char *tx_str) {


}

/**
 * Receive transaction from counter part
 * @param transaction
 * @return
 */
int ecall_lntee_recv_transaction(const char *transaction) {
    return 0;
}

/**
 * Load contract into Contract engine
 * @param contract_definition Contract detail (script and function hash)
 * @param address
 * @param addr_size
 */
void ecall_lntee_main(const char *contract_definition, char *address, size_t addr_size) {

}

void ecall_dummy() { int a = 0; /* Doing nothing */ };

OE_SET_ENCLAVE_SGX(
1,    /* ProductID */
1,    /* SecurityVersion */
true, /* Debug */
1024,  /* NumHeapPages */
1024,  /* NumStackPages */
2);   /* NumTCS */

#define TA_UUID                                            \
    { /* b843807a-e05c-423c-bcfb-1062cadb483f */           \
        0xb843807a, 0xe05c, 0x423c,                        \
        {                                                  \
            0xbc, 0xfb, 0x10, 0x62, 0xca, 0xdb, 0x48, 0x3f \
        }                                                  \
    }

OE_SET_ENCLAVE_OPTEE(
TA_UUID,
1 * 1024 * 1024,
12 * 1024,
0,
"1.0.0",
"lntee test")