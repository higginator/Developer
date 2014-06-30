//
//  main.m
//  TimeAfterTime
//
//  Created by Ryan Higgins on 3/10/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //NSDate *now = [NSDate date];
        //alloc and init are always nested!
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"This NSDate object lives at  %p", now);
        NSLog(@"The date is %@", now);
        
        double seconds = [now timeIntervalSince1970];
        NSLog(@"The time since 1970 is %f", seconds);
        
        NSDate *future = [now dateByAddingTimeInterval:100000];
        NSLog(@"The date in 100000 seconds is %@", future);
        
        //use calendar object to know the day of the month
        NSCalendar *cal = [NSCalendar currentCalendar];
        NSLog(@"the calendar I am using is %@", [cal calendarIdentifier]);
        
        long day = [cal ordinalityOfUnit:NSDayCalendarUnit
                       inUnit:NSMonthCalendarUnit
                      forDate:now];
        NSLog(@"The day of the month is %ld", day);
    }
    return 0;
}

