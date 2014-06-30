//
//  main.m
//  VowelCounter
//
//  Created by Ryan Higgins on 3/28/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+BNRVowelCounting.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSString *someSentence = @"My name is Ryan Higgins. I will master the world.";
        NSLog(@"the number of vowels in the sentence: %@ is %d", someSentence, [someSentence bnr_vowelCount]);
    }
    return 0;
}

