 #include <stdio.h>
 #include "foo.h"

 int main (){
    int i = bar (2);
    printf("%d\n", i);
    char* s = foo (2);
    printf("%s\n", s);
    return 0;
 }