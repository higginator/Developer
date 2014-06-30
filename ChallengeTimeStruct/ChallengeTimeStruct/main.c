//
//  main.c
//  ChallengeTimeStruct
//
//  Created by Ryan Higgins on 3/7/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{
    
    //write a program that tells the date (4-30-2015) 4 million seconds from now
    //time() gets number of seconds since 1970
    //localtime_r() reads time() and packs a struct tm with the appropriate values - takes 2 addresses
    
    long secondsSince1970 = time(NULL);
    secondsSince1970 = secondsSince1970 + 4000000;
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    
    printf("The date 4 million seconds from now is: %d-%d-%d\n", now.tm_mon + 1, now.tm_mday, now.tm_year + 1900);
    
    return 0;
    
}

