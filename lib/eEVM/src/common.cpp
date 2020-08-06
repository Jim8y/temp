#include "eEVM/common.h"

#include <string>

using namespace std;

static uint8_t hex2int(char input) {
    if (input >= '0' && input <= '9')
        return static_cast<uint8_t>(input - '0');
    if (input >= 'A' && input <= 'F')
        return static_cast<uint8_t>(input - 'A' + 10);
    if (input >= 'a' && input <= 'f')
        return static_cast<uint8_t>(input - 'a' + 10);
    return -1;
}

static char hexmap[] = {'0',
                        '1',
                        '2',
                        '3',
                        '4',
                        '5',
                        '6',
                        '7',
                        '8',
                        '9',
                        'a',
                        'b',
                        'c',
                        'd',
                        'e',
                        'f'};

std::vector<uint8_t> lntee::from_hex(const char *src) {
    std::vector<uint8_t> out;
    if (strlen(src) % 2 != 0)
        return std::vector<uint8_t>();
    if (strncmp(src, "0x", 2) == 0)
        src += 2;
    while (*src && src[1]) {
        out.push_back(hex2int(*src) * 16 + hex2int(src[1]));
        src += 2;
    }
    return out;
}

// This function assumes socket to be a zero terminated sanitized string with
// an even number of [0-9a-f] characters, and target to be sufficiently large
void lntee::from_hex(const char *src, char *target) {
    while (*src && src[1]) {
        *(target++) = hex2int(*src) * HEX_BASE + hex2int(src[1]);
        src += 2;
    }
}