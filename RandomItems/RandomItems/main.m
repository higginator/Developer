//
//  main.m
//  RandomItems
//
//  Created by Ryan Higgins on 3/30/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"backpack"
                                                 serialNumber:@"A01B2C"
                                               valueInDollars:50];
        BNRItem *binder = [[BNRItem alloc] initWithItemName:@"binder"
                                               serialNumber:@"345A2"
                                             valueInDollars:5];
        backpack.containedItem = binder;
        binder.container = backpack;
        
        [items addObject:backpack];
        [items addObject:binder];
        
        NSLog(@"%@", items);
        

        items = nil;
        
        
    }
    return 0;
}

