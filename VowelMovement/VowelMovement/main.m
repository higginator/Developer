//
//  main.m
//  VowelMovement
//
//  Created by Ryan Higgins on 3/21/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        typedef void (^ArrayEnumerationBlock)(id, NSUInteger, BOOL *);
        
        NSArray *originalStrings = @[@"Raygun", @"Sauerkraut", @"Big Nerd Ranch", @"Mississippi"];
        
        NSArray *vowels = @[@"a", @"e", @"i", @"o", @"u"];
        
        NSMutableArray *newStrings = [[NSMutableArray alloc] init];
        
        //instead of declaring here, use a more general typedef declaration!
        //void (^devowelizer)(id, NSUInteger, BOOL *);
        ArrayEnumerationBlock devowelizer;
        
        
        devowelizer = ^(id string, NSUInteger i , BOOL *stop) {
            NSRange iRange = [string rangeOfString:@"i"
                                           options:NSCaseInsensitiveSearch];
            
            //if i exists in the string, stop current iteration and all further iterations
            if (iRange.location != NSNotFound) {
                *stop = YES;
                return;
            }
            
            NSMutableString *newString = [NSMutableString stringWithString:string];
            
            for (NSString *v in vowels) {
                NSRange fullRange = NSMakeRange(0, [newString length]);
                [newString replaceOccurrencesOfString:v
                                           withString:@""
                                              options:NSCaseInsensitiveSearch
                                                range:fullRange];
            }
            [newStrings addObject:newString];
        };
        
        [originalStrings enumerateObjectsUsingBlock:devowelizer];
        NSLog(@"The original strings are: %@", originalStrings);
        NSLog(@"The new strings are: %@", newStrings);
    
        //When passing self to a block, use weak/inner self to avoid strong reference cycle

        
        //use of __block to increment a variable external to a block
        __block int counter = 0;
        
        void (^counterBlock)() = ^{ counter++; };
        
        counterBlock();
        counterBlock();
    
    }
    return 0;
}

