//
//  main.m
//  Groceries
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    
    @autoreleasepool {
        
        NSMutableArray *groceries = [[NSMutableArray alloc] init];
        NSString *drink = @"milk";
        NSString *fruit = @"strawberries";
        NSString *carbs = @"bagels";
        
        [groceries addObject:drink];
        [groceries addObject:carbs];
        [groceries insertObject:fruit atIndex:0];
        [groceries addObject:@"steak"];
        
        for (NSString *s in groceries) {
            NSLog(@"%@", s);
        }
    }
}
