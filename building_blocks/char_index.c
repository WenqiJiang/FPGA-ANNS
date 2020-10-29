#include <stdlib.h>
#include <stdio.h>

int main() {
    // here, must use unsigned char, otherwise the range of char would be -127 to 128
    // using unsigned char -> 0 ~ 255
    unsigned char index[256];
    float val[256];

    for (int i = 0; i < 256; i++) {
        index[i] = i;
        val[i] = 2 * i;
    }

    for (int i = 0; i < 256; i++) {
        // printf("%c\t", index[i]);
        // printf("%f \t", val[i]);
        printf("%f \t", val[index[i]]);
    }

    return 0;
}
