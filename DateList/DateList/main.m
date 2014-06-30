//
//  main.m
//  DateList
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    
    @autoreleasepool {
        
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24 * 60 * 60];
        NSDate *yesterday = [now dateByAddingTimeInterval: -24 * 60 * 60];
        
        //NSArray *dateList = @[now, tomorrow, yesterday];
        //NSArray *dateList = [NSArray arrayWithObjects: now, yesterday, tomorrow, nil];
        NSMutableArray *dateList = [[NSMutableArray alloc] init];
        [dateList addObject:tomorrow];
        [dateList addObject:yesterday];
        [dateList insertObject:now atIndex:0];
        [dateList removeObjectAtIndex:1];
 
        
        NSLog(@"The first item in the array is %@", [dateList objectAtIndex:0]);
        NSLog(@"The last item in the array is %@", dateList[[dateList count] -1]);
        
        //iterating over an array
        /*for (int i=0; i < [dateList count]; i++) {
            NSDate *dateObject = dateList[i];
            NSLog(@"%@ is a date!", dateObject);
        }*/
        
        //fast enumeration
        for (NSDate *d in dateList) {
            NSLog(@"%@ is a date", d);
        }
        
        
    }
    return 0;
}