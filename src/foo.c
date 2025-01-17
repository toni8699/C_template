#include <stdio.h>
# include <stdlib.h>
# include <string.h>
#include "foo.h"   
char* foo(int z) {
    char* result = malloc((z * 3 + 1) * sizeof(char)); // "foo" is 3 characters long
    if (result == NULL) {
        return NULL; // handle memory allocation failure
    }
    result[0] = '\0'; // initialize the result string
    for (int i = 0; i < z; i++) {
        strcat(result, "foo");
    }
    return result;

}

