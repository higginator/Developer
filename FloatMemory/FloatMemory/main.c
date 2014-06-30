//
//  main.c
//  FloatMemory
//
//  Created by Ryan Higgins on 3/6/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    float a = 89.0;
    float *addressOfA = &a;
    printf("The reasonable man asks himself, how much memory does a float consume?\n");
    printf("Or rather, he asks his machine.\n");
    printf("And in response, his machines responds %zu bytes\n", sizeof(float));
    printf("Natural progression of the human mind leads a man to ask, \"Sure, but how much space does a pointer to a float consume?\n");
    printf("To which his machine responds %zu bytes\n", sizeof(addressOfA));
    
    return 0;
}

