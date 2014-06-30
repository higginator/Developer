//
//  main.m
//  ChallengeHost
//
//  Created by Ryan Higgins on 3/10/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *myHost = [NSHost currentHost];
        NSString *name = [myHost localizedName];
        
        NSLog(@"My local host name is %@", name);
    }
    
    return 0;
}

