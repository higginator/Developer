//
//  main.m
//  ChallengeNameMatching
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char *argv[]) {
    
    @autoreleasepool {
        
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        NSMutableArray *matches = [[NSMutableArray alloc] init];
        
        NSLog(@"%lu", [matches count]);
        
        for (NSString *name in names) {
            NSString *nameLower = [name lowercaseString];
            for (NSString *word in words) {
                //accounts for both files ending in \n
                if (![word isEqualToString:@""]) {
                    if ([word isEqualToString:nameLower]) {
                        [matches addObject:word];
                        break;
                    }
                }
            }
        }
        
        for (NSString *match in matches) {
            NSLog(@"%@", match);
        }
        NSLog(@"%lu", [matches count]);
    }
    
    return 0;
}