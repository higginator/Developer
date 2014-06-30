//
//  main.c
//  Degrees
//
//  Created by Ryan Higgins on 3/5/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>
//stdlib.h contains EXIT_SUCCESS and EXIT_FAILURE, aliases for 0 and 1
#include <stdlib.h>

//global variables
static float lastTemperature;

float fahrenheightFromCelsius(float cel) {
    lastTemperature = cel;
    return 9/5 * cel + 32.0;
}
int main(int argc, const char * argv[])
{

    float freezeInC = 0;
    float freezeInF = fahrenheightFromCelsius(freezeInC);
    printf("Water freezes at %f degrees fahrenheit\n", freezeInF);
    printf("The last temperature converted was %f\n", lastTemperature);
    return EXIT_SUCCESS;
}

