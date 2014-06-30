//
//  RFHLogger.m
//  Callbacks
//
//  Created by Ryan Higgins on 3/20/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHLogger.h"

@implementation RFHLogger

//called each time a chunk of data is received
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"received %lu bytes", [data length]);
    //create a mutable data if it does not already exist
    if (!incomingData) {
        incomingData = [[NSMutableData alloc] init];
    }
    [incomingData appendData:data];
}

//called when the last chunk has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all!");
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    //Uncomment the next line to see the entire fetched file
    //NSLog(@"The whole string is %@", string);
}

// called if the fetch fails
-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    incomingData = nil;
}


-(NSString *)lastTimeAsString
{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        NSLog(@"created dateFormatter");
    }
    
    return [dateFormatter stringFromDate:self.lastTime];
}

-(void)updateLastTime:(NSTimer *)t
{
    NSDate *now = [NSDate date];
    [self willChangeValueForKey:@"lastTime"];
    //[self setLastTime:now];
    _lastTime = now;
    [self didChangeValueForKey:@"lastTime"];
    NSLog(@"Just set time to %@", self.lastTimeAsString);
}

-(void)zoneChange:(NSNotification *)n
{
    NSLog(@"The time zone has changed!");
}

@end
