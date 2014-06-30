//
//  main.m
//  ImageFetch
//
//  Created by Ryan Higgins on 3/17/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //WOooOHOO!! I just fetched the response of a url, and wrote it to a file using the NSData object!
        NSError *error;
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        NSData *data = [NSURLConnection sendSynchronousRequest:request
                                             returningResponse:NULL
                                                         error:&error];
        
        if (!data) {
            NSLog(@"Fetch failed - %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"The file is %lu bytes", [data length]);
        
        BOOL written = [data writeToFile:@"/tmp/google_logo.png"
                              atomically:YES];
        
        if (!written) {
            NSLog(@"Failure to write to file! %@", [error localizedDescription]);
        } else {
            NSLog(@"Successfull wrote to file! Go view the contents");
        }
        
        //Now Lets read a file into an NSData object
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google_logo.png"];
        NSLog(@"The file read from disk has %lu bytes!", [readData length]);
        
        
    }
    return 0;
}

