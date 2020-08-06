#include "lntee_t.h"
#include "dispatcher.h"
#include "eEVM/bigint.h"
#include "eEVM/common.h"
#include "eEVM/simple/simpleglobalstate.h"
#include "eEVM/transaction.h"
#include "mbedtls/sha256.h"
#include "mbedtls/platform.h"
#include "message.h"
#include "sgx_contract.h"
#include "shared.h"
#include "wallet.h"
#include <random>
#include <stdio.h>
#include "eth_aes.h"
#include "eth_ecdsa.h"
#include "eth_ecp.h"
#include <map>
#include <eEVM/debug.h>

static ecall_dispatcher dispatcher;
static Contract_Instance contract_instance;
static SGX_Contract contract;

/**
 * Get random string
 * @param length size of the random string
 * @return
 */
std::string random_string(size_t length) {
    LOG("");
    srand(time(NULL));
    auto randchar = []() -> char {
        const char charset[] =
                "0123456789"
                "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                "abcdefghijklmnopqrstuvwxyz";
        const size_t max_index = (sizeof(charset) - 1);
        return charset[rand() % max_index];
    };
    std::string str(length, 0);
    std::generate_n(str.begin(), length, randchar);
    return str;
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
    LOG("");
    printf("Enclave: unseal_data\n");
    return dispatcher.unseal_data(sealed_data, sealed_data_size, data, data_size);
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
    LOG("");
    unsigned char opt_mgs[128] = "hello world";
    size_t opt_msg_len = strlen((char *) opt_mgs);
    unsigned char *data = (unsigned char *) seed;
    size_t data_size = strlen((char *) data) + 1;
    sealed_data_t *sealed_data = NULL;

    initial_aes();

    size_t sealed_data_size = 0;
    int result = dispatcher.seal_data(
            POLICY_UNIQUE,
            opt_mgs,
            opt_msg_len,
            data,
            data_size,
            &sealed_data,
            &sealed_data_size);

    if (result != OE_OK) {
        cout << "Host: seal_data failed with " << result << endl;
    }

    // Generate prikey according to the hash of sealing result
    mbedtls_sha256_ret(
            (unsigned char *) sealed_data, sealed_data_size,
            (unsigned char *) &Wallet::Instance()->get_account()->prikey, 0);

    provision_ecdsa_key((char *) &Wallet::Instance()->get_account()->prikey, SECKEY_LEN);
    get_address((unsigned char *) &Wallet::Instance()->get_account()->pubkey,
                (unsigned char *) &Wallet::Instance()->get_account()->address);

    std::cout << "\n------------------------\n"
              << std::endl;


    std::cout << "ADDRESS: "
              << eevm::to_hex_string(Wallet::Instance()->get_account()->address) << std::endl;
    std::cout << "PRIKEY : "
              << eevm::to_hex_string(Wallet::Instance()->get_account()->prikey)
              << std::endl;
    std::cout << "PUBKEY :"
              << eevm::to_hex_string(Wallet::Instance()->get_account()->pubkey)
              << std::endl;

    std::cout << "\n------------------------\n"
              << std::endl;
    // For test
    Wallet::Instance()->set_balance(1000000);

    // Copy TEE pubkey to the host
    memcpy((void *) pubkey,
           eevm::to_hex_string(Wallet::Instance()->get_account()->pubkey).c_str(),
           PUBKEY_LEN * 2);
    memcpy((void *) addr,
           eevm::to_hex_string(Wallet::Instance()->get_account()->address).c_str(),
           ADDRESS_LEN * 2);

    initial_aes();
//    char msg[1024] = "helloworldhelloworldhelloworldhelloworldhelloworldhelloworldhelloworldhelloworldhelloworldhelloworldhelloworldhelloworld";
//    unsigned char output1[32];
////    char cipher[1024] = {'\0'};
////    char plain[1024] = {'\0'};
////    print_hex("Method 1", output1, sizeof output1);
////    ocall_lntee_time_log();
////    for (int i = 0; i < 10000; i++) {
//        mbedtls_sha256_ret((const unsigned char *) msg, 1024, output1, 0);
//        ecdsa_sign(output1);
//        aes_encrypt((unsigned char *) msg, 64, (unsigned char *) cipher);
//        aes_decrypt((char *) cipher, 64, (unsigned char *) msg);
//    }
//    ocall_lntee_time_log();
    //    char cipher[1024] = {'\0'};
//    char plain[1024] = {'\0'};
//    DEBUG("");
//    ocall_lntee_time_log();
//    for (int i = 0; i < 10000; i++) {
//        aes_encrypt((unsigned char *) msg, 64, (unsigned char *) cipher);
//        aes_decrypt((char *) cipher, 64, (unsigned char *) plain);
//    }
//    ocall_lntee_time_log();
//    DEBUG("");
//    aes_finish();
//    aes_test();

    return result;
}

/**
 * Calls by the host to handle command from user
 * Process transactions in Contract engine
 * @param tx transaction script
 */
void process_transaction(eevm::Transaction *tx) {
    LOG("");
    eevm::Address target;
    memcpy((void *) &target, (char *) &tx->target, ADDRESS_LEN);
    const auto success = contract.transfer(tx->origin, target, tx->value);
    if (!success) {
        throw std::runtime_error("Expected transfer to succeed, but it failed");
    }
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
    if (Wallet::Instance()->direct_send(*(eevm::Pubkey *) pubkey, amt)) {
        // 0 -15 bytes amt
        // 16 - 79 bytes local_pubkey
//        char cipher[80];
//        char plain[80];
//        DEBUG("");
//        memcpy((void *) tx, (char *) &amt, sizeof(int));
//        memcpy((void *) (tx + 16), (char *) &Wallet::Instance()->get_account()->pubkey, PUBKEY_LEN);
//        DEBUG("");
//        aes_encrypt((unsigned char *) tx, 5, (unsigned char *) cipher);
//        aes_decrypt((char *) cipher, 5, (unsigned char *) plain);
        char msg[1024] = "helloworldhelloworldhelloworldhelloworldhelloworldhelloworldhelloworldhelloworldhelloworldhelloworldhelloworldhelloworld";
        unsigned char output1[32];
//    char cipher[1024] = {'\0'};
//    char plain[1024] = {'\0'};
//    print_hex("Method 1", output1, sizeof output1);
//    ocall_lntee_time_log();
//    for (int i = 0; i < 10000; i++) {
        mbedtls_sha256_ret((const unsigned char *) msg, 1024, output1, 0);
        ecdsa_sign(output1);
    } else {
        cout << "Balance not enough" << endl;
    }
}

int ecall_lntee_direct_recv(const char *tx) {
    DEBUG("");
    int amt = 0;
    char pubkey[PUBKEY_LEN];
    memcpy((void *) &amt, tx, sizeof(int));
    memcpy((void *) pubkey, tx + 16, PUBKEY_LEN);

    if (Wallet::Instance()->direct_receive(*(eevm::Pubkey *) pubkey, amt))
        return 0;

    return -1;
}

/**
 * Process transactions from the host, should return the signed transaction
 * @param function_call
 * @param tx_str return signed tx
 */
void ecall_lntee_send(const char *function_call, char *tx_str) {
    DEBUG("");
    eevm::Code script = lntee::from_hex(function_call);
    if (contract.invoke(Wallet::Instance()->get_account()->address, script)) {
        DEBUG("SUCCESS");
        int size = (script.size() % 16 == 0) ? script.size() / 16 : (script.size() / 16 + 1);

        char *plain = new char[size * 16];
        memset(plain, 0, size * 16);

        memcpy((void *) plain, (unsigned char *) &script[0], script.size());
        DEBUG("");
        aes_encrypt((unsigned char *) plain, size, (unsigned char *) tx_str);
    } else {
        DEBUG("FAILED");
    }
}

/**
 * Receive transaction from counter part
 * @param transaction
 * @return
 */
int ecall_lntee_recv_transaction(const char *transaction) {
    LOG("");

    int len = strlen(transaction);
    unsigned char *enc_tx = new unsigned char[len];
    memset(enc_tx, 0, len);
    lntee::from_hex(transaction, (char *) enc_tx);
    eevm::Code plain;
    plain.resize(len);
    aes_decrypt((char *) enc_tx, len / 16, (unsigned char *) plain.data());
    if (contract.invoke(Wallet::Instance()->get_account()->address, plain)) {
        DEBUG("SUCCESS");
        return 0;
    } else {
        DEBUG("FAILED");
        return -1;
    }


}

/**
 * Load contract into Contract engine
 * @param contract_definition Contract detail (script and function hash)
 * @param address
 * @param addr_size
 */
void ecall_lntee_main(const char *contract_definition, char *address, size_t addr_size) {
    LOG("");
    contract.loadContract(nlohmann::json::parse(contract_definition), &Wallet::Instance()->get_account()->address);
}