//
//  main.c
//  Numbers
//
//  Created by Ryan Higgins on 3/5/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    printf("The sine of 1 radian is %.3f\n",sin(1));
    
    printf("3 * 3 + 5 * 2 is %d\n", 3 * 3 + 5 * 2);
    printf("11 / 3 in floating point division is %f.\n", (float) 11 / 3);

    printf("The absolute value of -5 is %d\n", abs(-5));
    printf("The absolute value of -1234567891011 is %ld\n", labs(-1234567891011));
    
    double y = 12345.678910;
    printf("%.2f here shows decimal notation\n", y);
    printf("Where as here %.2e shows scientific notation\n", y);
    return 0;
}

