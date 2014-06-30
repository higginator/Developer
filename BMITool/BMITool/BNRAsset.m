//
//  BNRAsset.m
//  BMITool
//
//  Created by Ryan Higgins on 3/12/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "BNRAsset.h"

@implementation BNRAsset

-(NSString *)description
{
    if (self.holder) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", self.label, self.resaleValue, self.holder];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", self.label, self.resaleValue];

    }
}

-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
