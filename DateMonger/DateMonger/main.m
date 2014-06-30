//
//  main.m
//  DateMonger
//
//  Created by Ryan Higgins on 3/28/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+BNRDateConvenience.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDate *aDay = [[NSDate alloc] init];
        NSDate *newDay = [aDay initToMidnightforYear:1992 forMonth:8 forDay:27];
        NSLog(@"Let me tell you about %@", newDay);
    }
    return 0;
}

