//
//  main.m
//  Appliances
//
//  Created by Ryan Higgins on 3/28/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRAppliance.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BNRAppliance *a = [[BNRAppliance alloc] init];
        NSLog(@"a is %@", a);
        //[a setProductName:@"Tacx I-Genius"];
        [a setValue:@"Tacx I-Genius" forKey:@"productName"];
        //a.voltage = 240;
        [a setValue:[NSNumber numberWithInt:240] forKey:@"voltage"];
        NSLog(@"a is %@", a);
        NSLog(@"the product name of a is %@", [a valueForKey:@"productName"]);
        
    }
    return 0;
}

