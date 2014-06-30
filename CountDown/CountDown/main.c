//
//  main.c
//  CountDown
//
//  Created by Ryan Higgins on 3/6/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <readline/readline.h>

int main(int argc, const char * argv[])
{
    printf("Where should I start counting? \n");
    int userSuggestion = atoi(readline(NULL));
    while (userSuggestion > 0) {
        printf("%d\n", userSuggestion);
        userSuggestion--;
    }
    
    return 0;
}

