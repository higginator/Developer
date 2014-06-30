//
//  BNROwnedAppliance.m
//  Appliances
//
//  Created by Ryan Higgins on 3/28/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "BNROwnedAppliance.h"

@interface BNROwnedAppliance ()
{
    NSMutableSet *_ownerNames;
}
@end

@implementation BNROwnedAppliance

-(instancetype)initWithProductName:(NSString *)pn firstOwnerName:(NSString *)n
{
    if (self = [super initWithProductName:pn])
    {
        _ownerNames = [[NSMutableSet alloc] init];
    }
    if (n) {
        [_ownerNames addObject:n];
    }
    return self;
}

-(instancetype)initWithProductName:(NSString *)pn
{
    return [self initWithProductName:pn firstOwnerName:nil];
}

-(void)addOwnerNamesObject:(NSString *)n
{
    [_ownerNames addObject:n];
}

-(void)removeOwnerNamesObject:(NSString *)n
{
    [_ownerNames removeObject:n];
}

-(NSSet *)ownerNames
{
    return [_ownerNames copy];
}

@end
