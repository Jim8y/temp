/*
 *  This file is auto generated by oeedger8r. DO NOT EDIT.
 */
#ifndef EDGER8R_LNTEE_U_H
#define EDGER8R_LNTEE_U_H

#include <openenclave/host.h>

#include "lntee_args.h"

OE_EXTERNC_BEGIN

oe_result_t oe_create_lntee_enclave(
    const char* path,
    oe_enclave_type_t type,
    uint32_t flags,
    const oe_enclave_setting_t* settings,
    uint32_t setting_count,
    oe_enclave_t** enclave);

/**** ECALL prototypes. ****/
oe_result_t ecall_lntee_main(
    oe_enclave_t* enclave,
    const char* contract_definition,
    char* address,
    size_t addr_size);

oe_result_t ecall_lntee_init_tee(
    oe_enclave_t* enclave,
    int* _retval,
    const char* seed,
    const char* pubkey,
    const char* addr);

oe_result_t ecall_lntee_send(
    oe_enclave_t* enclave,
    const char* function_call,
    char* tx_str);

oe_result_t ecall_lntee_recv_transaction(
    oe_enclave_t* enclave,
    int* _retval,
    const char* transaction);

oe_result_t ecall_lntee_direct_send(
    oe_enclave_t* enclave,
    const char* pubkey,
    int amt,
    char* tx);

oe_result_t ecall_lntee_direct_recv(
    oe_enclave_t* enclave,
    int* _retval,
    const char* tx);

oe_result_t ecall_lntee_generate_contract_instance_id(
    oe_enclave_t* enclave,
    int* _retval);

/**** OCALL prototypes. ****/
void ocall_lntee_broadcast(
    const char* tx,
    const char* instance_id);

void ocall_lntee_send_transaction(
    const char* target_pubkey,
    const char* tx);

void ocall_lntee_time_log(void);

void ocall_lntee_pubkey(
    const char* pubkey,
    size_t len);

OE_EXTERNC_END

#endif // EDGER8R_LNTEE_U_H
