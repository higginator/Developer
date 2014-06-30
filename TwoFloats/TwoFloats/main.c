//
//  main.c
//  TwoFloats
//
//  Created by Ryan Higgins on 3/5/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    float firstNum, secondNum;
    double sumNum;
    
    firstNum = 3.14;
    secondNum = 42.0;
    
    sumNum = firstNum + secondNum;
    
    printf("The sum of the two floats, firstNum and secondNum is: %f\n", sumNum);
    
    return 0;
}

