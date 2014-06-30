//
//  main.c
//  Turkey
//
//  Created by Ryan Higgins on 3/5/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>

void showCookTimeForTurkey(int pounds) {
    
    int cookTime = 15 + 15 * pounds;
    if (cookTime > 120) {
        int halfway = cookTime / 2 ;
        printf("Rotate turkey after %d minutes\n", halfway);
    }
}

int main(int argc, const char * argv[])
{
    
    int totalWeight = 10;
    int gibletsWeight = 1;
    int turkeyWeight = totalWeight - gibletsWeight;
    showCookTimeForTurkey(turkeyWeight);
    
    return 0;
}
