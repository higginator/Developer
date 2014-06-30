//
//  main.m
//  ChallengePListing
//
//  Created by Ryan Higgins on 3/21/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        //create a property list using all 8 types
        //NSArray, NSString, NSDate, NSDictionary, NSData, float, int, boolean
        

        NSArray *array = @[@"hey mama", @"i'm so proud of you", @"let me tell you what I'm about to do"];
        NSDictionary *dict = @{@"best": @"kanye", @"goat": @"ali"};
        NSString *str = @"I will shine so bright for you";
        NSData *data = [[NSData alloc] initWithContentsOfFile:@"/tmp/the_coolest.txt"];
        NSDate *date = [[NSDate alloc] init];
        NSNumber *flo = [NSNumber numberWithFloat:200.34];
        NSNumber *age = [NSNumber numberWithInt:21];
        NSNumber *sexy = [NSNumber numberWithBool:YES];
        
        //put in array and write to file
        NSArray *pList = [[NSArray alloc] initWithObjects:array, dict, str, data, date, flo, age, sexy, nil];
        
        NSLog(@"array: %@", pList);
        [pList writeToFile:@"/tmp/challenge_properties.plist"
                atomically:YES];
        
        NSLog(@"wrote it");
        
        
    }
    return 0;
}

