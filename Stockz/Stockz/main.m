//
//  main.m
//  Stockz
//
//  Created by Ryan Higgins on 3/21/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
    
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *stock;
        
        stock = [[NSMutableDictionary alloc] init];
        [stock setObject:@"AAPL"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200]
                  forKey:@"shares"];
        [stocks addObject:stock];
        
        stock = [[NSMutableDictionary alloc] init];
        [stock setObject:@"GOOG"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:150]
                  forKey:@"shares"];
        [stocks addObject:stock];
        
        //write to file
        [stocks writeToFile:@"/tmp/stocks.plist"
                 atomically:YES];
        
        //read from file
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/stocks.plist"];
        
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares in %@", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
        
    }
    return 0;
}

