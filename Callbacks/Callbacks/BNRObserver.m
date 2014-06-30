//
//  BNRObserver.m
//  Callbacks
//
//  Created by Ryan Higgins on 3/28/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "BNRObserver.h"

@implementation BNRObserver

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSString *oldValue = [change objectForKey:NSKeyValueChangeOldKey];
    NSString *newValue = [change objectForKey:NSKeyValueChangeNewKey];
    NSLog(@"Observer: %@ of %@ was changed from %@ to %@", keyPath, object, oldValue, newValue);
}

@end
