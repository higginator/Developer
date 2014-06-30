//
//  main.m
//  Callbacks
//
//  Created by Ryan Higgins on 3/20/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RFHLogger.h"
#import "BNRObserver.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        RFHLogger *logger = [[RFHLogger alloc] init];
        
        
        //Changing via notification callback
       /* [[NSNotificationCenter defaultCenter] addObserver:logger
                                                 selector:@selector(zoneChange:)
                                                     name:NSSystemTimeZoneDidChangeNotification
                                                   object:nil];
        */
        
        //changing via block callback
        void (^blockZoneUpdate)(NSNotification *) = ^(NSNotification *n){
                NSLog(@"The time zone has changed! Via Block");
        };
        
        [[NSNotificationCenter defaultCenter] addObserverForName:NSSystemTimeZoneDidChangeNotification
                                                          object:nil
                                                           queue:nil
                                                      usingBlock: blockZoneUpdate];
        
        
        NSURL *url = [NSURL URLWithString:@"http://www.gutenberg.org/cache/epub/205/pg205.txt"];
        NSURLRequest *request = [NSURLRequest requestWithURL:url];
        
        __unused NSURLConnection *fetchConn = [[NSURLConnection alloc] initWithRequest:request
                                                                     delegate:logger
                                                             startImmediately:YES];
        
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:2.0
                                                           target:logger
                                                         selector:@selector(updateLastTime:)
                                                         userInfo:nil repeats:YES];
        
        __unused BNRObserver *observer = [[BNRObserver alloc] init];
        
        //I want to know the new value and the old value whenever lastTime is changed
        [logger addObserver:observer
                 forKeyPath:@"lastTime"
                    options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                    context:nil];
        
        [[NSRunLoop currentRunLoop] run];
        
    }
    return 0;
}

