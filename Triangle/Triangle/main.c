//
//  main.c
//  Triangle
//
//  Created by Ryan Higgins on 3/5/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>

float calculateAngle(float a, float b) {
    return 180.0 - (a + b);
}

int main(int argc, const char * argv[])
{

    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = calculateAngle(angleA, angleB);
    printf("The 3rd angle is %.2f\n", angleC);
    //\" will escape a quotation and allow it to be used within a literal string
    printf("\"You could be a legend,\" said Ryan to himself.\n");
    return 0;
    
}

