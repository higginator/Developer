//
//  main.c
//  bitwize
//
//  Created by Ryan Higgins on 3/28/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    unsigned char a = 0x3c;
    unsigned char b = 0xa9;
    //bitwise OR
    unsigned char c = a | b;
    
    printf("Hex %x | %x = %x\n", a, b, c);
    printf("Decimal %d | %d = %d\n", a, b, c);
    
    //bitwise AND
    unsigned char d = a & b;
    printf("Hex: %x & %x = %x\n", a, b, d);
    printf("Decimal: %d & %d = %d\n", a, b, d);
    
    //bitwise XOR
    unsigned char e = a ^ b;
    printf("Hex: %x & %x = %x\n", a, b, e);
    printf("Decimal: %d & %d = %d\n", a, b, e);
    
    //complement
    unsigned char f = ~b;
    printf("The hexadecimal complement of %x is %x\n", b, f);
    printf("The decimal complement of %d is %d\n", b, f);

    //left shift
    __unused unsigned char g = a << 2;
    //right shift
    __unused unsigned char h = a >> 4;
    
    unsigned long z = 0;
    for (int i = 0; i < 32; i++) {
        z = z | 0x1;
        z = z << 2;
    }
    z = z | 0x1;
    printf("%lu\n", z);
    
    unsigned long q = 0x5555555555555555;
    printf("%lu\n", q);
    
    return 0;
    
}

