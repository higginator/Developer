//
//  main.m
//  Constants
//
//  Created by Ryan Higgins on 3/13/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Pi is %f", M_PI);
        NSLog(@"%d is larger", MAX(10, 12));
        //NSLocale gives current location!
        NSLocale *here = [NSLocale currentLocale];
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Currency is %@", currency);
    }
    return 0;
}

