#include "foo.h"
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>


void test_foo(){
    char *result = foo(2);
    assert(strcmp (result, "foofoo") == 0);
    result =foo(3);
    assert(strcmp (result, "foofoofoo") == 0);
    result =foo(4);
    assert(strcmp (result, "foofoofoofoo") == 0);}
void test_bar(){
    assert(bar(2) == 4);
    assert(bar(3) == 6);
    assert(bar(4) == 8);    
}
void test_fibbonaci(){
    assert(fibbonaci(0) == 0);
    assert(fibbonaci(1) == 1);
    assert(fibbonaci(2) == 1);
    assert(fibbonaci(3) == 2);
    assert(fibbonaci(4) == 3);
    assert(fibbonaci(5) == 5);
}
    

int main(){
    test_bar();
    test_foo();
    test_fibbonaci();
    printf("all test passed\n");
    return 0;
}