//
//  main.c
//  PBR
//
//  Created by Ryan Higgins on 3/7/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>
#include <math.h>

void metersToFeetAndInches(double meters, double *ftPtr, double *inPtr) {
    double rawFeet = meters * 3.281;
    printf("rawFeet: %f\n", rawFeet);
    //null pointer checks
    //Avoid deferencing a null pointer
    if (ftPtr && inPtr) {
        *inPtr = modf(rawFeet, ftPtr);
    }
}

int main(int argc, const char * argv[])
{
    
    double meters = 6.6;
    double feetn;
    double inches;
    metersToFeetAndInches(meters, &feet, &inches);
    
    printf("In meters: %f\n", meters);
    printf("In feet: %.0f feet %f inches\n", feet, inches);
    
    return 0;
}

