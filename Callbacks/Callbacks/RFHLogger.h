//
//  RFHLogger.h
//  Callbacks
//
//  Created by Ryan Higgins on 3/20/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RFHLogger : NSObject
    <NSURLConnectionDataDelegate, NSURLConnectionDelegate>
{
    NSMutableData *incomingData;
}

@property (nonatomic) NSDate *lastTime;


-(NSString *)lastTimeAsString;
-(void)updateLastTime:(NSTimer *)t;
-(void)zoneChange:(NSNotification *)n;


@end
