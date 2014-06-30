//
//  RFHForeignStockHolding.m
//  ChallengeStocks
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHForeignStockHolding.h"

@implementation RFHForeignStockHolding

-(float)costInDollars
{
    return [super costInDollars] * [self conversionRate];
}

-(float)valueInDollars
{
    return [super valueInDollars] * [self conversionRate];
}

@end
