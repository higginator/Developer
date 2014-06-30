//
//  main.m
//  TimesTwo
//
//  Created by Ryan Higgins on 3/10/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char *argv[]) {
    @autoreleasepool {
        
        NSDate *now = [[NSDate alloc] init];
        NSLog(@"The current date is %p", now);
        
        NSDate *priorDate = now;
        now = [[NSDate alloc] init];
        NSLog(@"The current date %p", now);
        
        NSLog(@"The previous date is %p", priorDate);
        
        priorDate = nil;
        
        NSLog(@"the prior NSDate object should now have a reference count of 0! and will be destroyed from the heap!");
        NSLog(@"prior date should be 0x0 and it in fact is %p", priorDate);
        
    }
    
    return 0;
}