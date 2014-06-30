//
//  main.m
//  ChallengeDateMessaging
//
//  Created by Ryan Higgins on 3/10/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
       
        NSDate *now = [[NSDate alloc] init];
        
        //create date components
        NSDateComponents *comp = [[NSDateComponents alloc] init];
        [comp setYear:1992];
        [comp setMonth: 8];
        [comp setDay:27];
        [comp setHour: 6];
        [comp setMinute: 0];
        [comp setSecond: 0];
        //create gregorian calendar
        NSCalendar *gcal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        //create date from calendar and date components
        NSDate *dateOfBirth = [gcal dateFromComponents:comp];
        //measure difference between date of birth and now
        double secondsSinceEarlierDate = [now timeIntervalSinceDate:dateOfBirth];
        
        NSLog(@"I have been alive for %f seconds", secondsSinceEarlierDate);
    }
    
    return 0;
}

