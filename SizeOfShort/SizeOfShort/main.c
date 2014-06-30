//
//  main.c
//  SizeOfShort
//
//  Created by Ryan Higgins on 3/6/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    printf("On this mac machine, shorts are %zu bytes\n", sizeof(short));
    printf("By default, shorts are signed. So the largest a short can be is 2^15, and the smallest a short can be is -(2^15). 1 bit is used for the sign\n");
    printf("Unsigned shorts largest value is 2^16\n");
    return 0;
}

