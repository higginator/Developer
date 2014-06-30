//
//  main.c
//  TheHeap
//
//  Created by Ryan Higgins on 3/10/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> //malloc and free are in stdlib

typedef struct {
    float weightInKilos;
    float heightInMeters;
} Person;

void createBufferForPerson() {
    Person *scotty = (Person *)malloc(sizeof(Person));
    scotty->weightInKilos = 70;
    scotty->heightInMeters = 1.9;
    
    printf("Scotty's weight is %.2f kilos and his height is %.2f meters. Scotty is stored on the heap!\n", scotty->weightInKilos, scotty->heightInMeters);
    
    free(scotty);
    
    scotty = NULL;

}

int main(int argc, const char * argv[])
{
    //display usage of the heap storing floats
    float *startOfBuffer;
    
    startOfBuffer = malloc(1000 * sizeof(float));
    
    //do stuff with buffer here
    
    free(startOfBuffer);
    
    startOfBuffer = NULL;
    
    createBufferForPerson();
    
    return 0;
}