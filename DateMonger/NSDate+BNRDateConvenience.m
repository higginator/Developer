//
//  NSDate+BNRDateConvenience.m
//  DateMonger
//
//  Created by Ryan Higgins on 3/28/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "NSDate+BNRDateConvenience.h"

@implementation NSDate (BNRDateConvenience)

-(NSDate *)initToMidnightforYear:(int)y forMonth:(int)m forDay:(int)d
{
    NSDateComponents *component = [[NSDateComponents alloc] init];
    [component setYear:y];
    [component setMonth:m];
    [component setDay:d];
    [component setHour:17];
    [component setMinute:0];
    [component setSecond:0];
    NSCalendar *cal = [NSCalendar currentCalendar];
    NSDate *newDate = [cal dateFromComponents:component];
    return newDate;
}

@end
