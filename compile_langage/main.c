// main.c
#include <stdio.h>

void print_c() {
#ifdef ONLY_C_FILE
    printf("This is a C file with ONLY_C_FILE defined.\n");
#else
    printf("This is a C file.\n");
#endif
}