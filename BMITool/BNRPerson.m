//
//  BMITool.m
//  BMITool
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "BNRPerson.h"

@implementation BNRPerson

/*
 No longer need to implement accessor methods because of @property
- (int)weightInKilos
{
    return _weightInKilos;
}

- (float)heightInMeters
{
    return _heightInMeters;
}

- (void)setWeightInKilos:(int)w
{
    _weightInKilos = w;
}

- (void)setHeightInMeters:(float)h
{
    _heightInMeters = h;
}
*/
- (float)bodyMassIndex
{
    return [self weightInKilos] / ([self heightInMeters] * [self heightInMeters]);
}

- (void)addMyselfToAnArray:(NSMutableArray *)array
{
    [array addObject:self];
}

@end
