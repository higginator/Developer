//
//  main.c
//  ClassCertificates
//
//  Created by Ryan Higgins on 3/5/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>
//file unistd.h contains the sleep function
#include <unistd.h>

void congratulateStudent(char *student, char *course, int days) {
    printf("Congratulations %s! you completed %s in %d days!\n", student, course, days);
}


int main(int argc, const char * argv[])
{
    congratulateStudent("Ryan", "iPhone Programming Introduction", 5);
    sleep(2);
    congratulateStudent("Iskander", "Android Programming Introduction", 30);
    sleep(2);
    congratulateStudent("Scotty", "Chef School", 300);
    
    return 0;
}
