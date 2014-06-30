//
//  main.c
//  Addresses
//
//  Created by Ryan Higgins on 3/6/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int i = 17;
    int *addressOfI = &i;
    printf("i is stored at %p\n", addressOfI);
    printf("this function starts at %p\n", main);
    printf("The value at address %p is %d\n", addressOfI, *addressOfI);
    *addressOfI = 89;
    printf("Now the value at address %p is %d\n", addressOfI, *addressOfI);
    
    printf("An int is %zu bytes\n", sizeof(int));
    //size of the pointer determines the size of my memory, in my case I am running 64 bit
    printf("A pointer is %zu bytes\n", sizeof(int *));
    return 0;
}

