//
//  main.c
//  BMICALC
//
//  Created by Ryan Higgins on 3/7/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#include <stdio.h>


//declare structs outside main function
typedef struct {
    int weightInKilos;
    float heightInMeters;
} Person;

float BodyMassIndex(Person p) {
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[])
{
    Person Joey;
    
    Joey.heightInMeters = 1.8;
    Joey.weightInKilos = 60;
    
    Person Ryan;
    
    Ryan.heightInMeters = 1.6;
    Ryan.weightInKilos = 62;
    
    float bmi = BodyMassIndex(Joey);
    printf("Joey has a BMI of %f\n", bmi);
    
    bmi = BodyMassIndex(Ryan);
    printf("Ryan has a BMI of %f\n", bmi);
    
    return 0;
}

