//
//  main.c
//  BeerProject
//
//  Created by Ryan Higgins on 3/5/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>

void singSongFor(int numberOfBottles) {
    if (numberOfBottles == 0) {
        printf("There are no more bottles of beer on the wall.\n");
    } else {
        int oneFewer = numberOfBottles - 1;
        printf("%d bottles of beer on the wall, %d bottles of beer. ", numberOfBottles, numberOfBottles);
        printf("Take one down pass it around, %d bottles of beer on the wall.\n", oneFewer);
        singSongFor(oneFewer);
        
        //Print a message just before the function ends
        printf("Put a bottle in the recycling, %d empty bottles in the bin.\n", numberOfBottles);
    }
}
int main(int argc, const char * argv[])
{

    singSongFor(7);
    return 0;
}

