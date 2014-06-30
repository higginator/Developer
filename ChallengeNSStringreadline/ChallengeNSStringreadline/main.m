//
//  main.m
//  ChallengeNSStringreadline
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //displaying use of NSRange and substringWithRange:range
        NSString *listOfNames = @"Martha, Lydia, Zuben, Ryan, Sam";
        NSString *name = @"ryan";
        NSRange match = [listOfNames rangeOfString:name options:NSCaseInsensitiveSearch];
        if (match.location == NSNotFound) {
            NSLog(@"%@ is not in %@", name, listOfNames);
        } else {
            NSLog(@"Ding Ding Ding! %@ is in %@!", name, listOfNames);
            NSLog(@"The word is %@", [listOfNames substringWithRange:match]);
        }
        
        //NSString methods
        NSString *birthdaySong = [NSString stringWithFormat:@"Happy Birthday dear %@", name];
        NSLog(@"%@", birthdaySong);
        
        if ([birthdaySong isEqualToString:listOfNames]) {
            NSLog(@"Wow, those children have some unique names!");
        } else {
            NSLog(@"As expected, who would name their child Birthday?");
        }
        
        NSLog(@"%@", [birthdaySong uppercaseString]);
        
        NSLog(@"The length of %@ is %lu characters", birthdaySong, [birthdaySong length]);
        
        //Converting C strings to Objective-C strings
        const char *ancientCString = "I was born in 1970";
        
        NSString *shinyObjectiveCString = [NSString stringWithUTF8String:ancientCString];
        NSLog(@"%@", shinyObjectiveCString);
        
    }
    return 0;
}

