//
//  main.m
//  Stringz
//
//  Created by Ryan Higgins on 3/17/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Let's write to a file gang!
        //Who's cool? Ryan's cool!!!
        
        NSMutableString *str = [[NSMutableString alloc] init];
        NSError *writeError;
        
        for (int i=0; i< 13; i++) {
            [str appendString:@"Ryan is cool!\n"];
        }
        
        BOOL success = [str writeToFile:@"/tmp/the_coolest.txt"
                             atomically:YES
                               encoding:NSUTF8StringEncoding
                                  error:&writeError];
        
        if (success) {
            NSLog(@"Successful wrote to file tmp/the_coolest.txt!");
        } else {
            NSLog(@"Error!!! %@", [writeError localizedDescription]);
        }
        
        
        //Fantastic Work!!!
        //Now let's read a file!
        
        NSError *readError;
        NSString *readStr = [[NSString alloc] initWithContentsOfFile:@"/etc/resolv.conf"
                                                        encoding:NSASCIIStringEncoding
                                                           error:&readError];
        
        if (readStr) {
            NSLog(@"Successful read a file into string!");
            NSLog(@"it looked like this: %@", readStr);
        } else {
            NSLog(@"Error: %@", [readError localizedDescription]);
        }
    }
    return 0;
}

