//
//  main.c
//  yostring
//
//  Created by Ryan Higgins on 3/28/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, const char * argv[])
{

    
    char x = 0x21;
    
    while (x < 0x7e) {
        printf("%x is %c\n",x,x);
        x++;
    }
    
    char *start = malloc(5);
    *start = 'L';
    *(start+1) = 'O';
    *(start+2) = 'V';
    *(start+3) = 'E';
    *(start+4) = '\0';
    printf("%s has %zu characters\n", start,strlen(start));
    
    free(start);
    start = NULL;
    return 0;
}

