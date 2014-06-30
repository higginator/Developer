//
//  main.c
//  Squarer
//
//  Created by Ryan Higgins on 3/5/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>


int square(int n) {
    return n * n;
}

int main(int argc, const char * argv[])
{
    int num = 5;
    printf("\"%d\" squared is \"%d\"\n", num, square(num));

    return 0;
}

