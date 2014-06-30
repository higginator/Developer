//
//  BNREmployee.m
//  BMITool
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "BNREmployee.h"
#import "BNRAsset.h"

@interface BNREmployee ()
{
    NSMutableSet *_assets;
}

@property (nonatomic) unsigned int officialAlarmCode;

@end

@implementation BNREmployee
-(void)setAssets:(NSArray *)assets
{
    _assets = [_assets mutableCopy];
}

-(NSArray *)assets
{
    return [_assets copy];
}

-(void)addAsset:(BNRAsset *)a
{
    //is assets nil?
    if (!_assets) {
        
        //create the array
        _assets = [[NSMutableSet alloc] init];
    }
    [_assets addObject:a];
    [a setHolder:self];
}

-(void)removeAsset:(BNRAsset *)a
{
    [_assets removeObject:a];
}

-(unsigned int)valueOfAssets
{
    //sum up the resale value of the assets
    unsigned int sum = 0;
    for (BNRAsset *a in _assets)
    {
        sum += [a resaleValue];
    }
    return sum;
}

-(double)yearsOfEmployment
{
    //do I have a non nil hire date?
    if (self.hireDate) {
        NSDate *now = [[NSDate alloc] init];
        NSTimeInterval secs = [now timeIntervalSinceDate:self.hireDate];
        double secondsPerYear = 31557600.0;
        return secs / secondsPerYear;
    } else {
        return 0;
    }
}

-(float)bodyMassIndex
{
    return 19.0;
}

-(NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>", [self employeeID], [self valueOfAssets]];
}

@end
