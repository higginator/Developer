//
//  RFHStockHolding.m
//  ChallengeStocks
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHStockHolding.h"

@implementation RFHStockHolding

-(float)purchaseSharePrice
{
    return _purchaseSharePrice;
}

-(void)setPurchaseSharePrice:(float)p
{
    _purchaseSharePrice = p;
}

-(float)currentSharePrice
{
    return _currentSharePrice;
}

-(void)setCurrentSharePrice:(float)p
{
    _currentSharePrice = p;
}

-(int)numberOfShares
{
    return _numberOfShares;
}

-(void)setNumberOfShares:(int)s
{
    _numberOfShares = s;
}

-(float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

-(float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
