//
//  RFHProtfolio.m
//  ChallengeStocks
//
//  Created by Ryan Higgins on 3/12/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHPortfolio.h"
#import "RFHStockHolding.h"

@interface RFHPortfolio ()
{
    NSMutableArray *_stocks;
}
@end

@implementation RFHPortfolio

-(void)addStock:(RFHStockHolding *)s
{
    if (!_stocks) {
        _stocks = [[NSMutableArray alloc] init];
    }
    [_stocks addObject:s];
}

-(void)removeStock:(RFHStockHolding *)s
{
    [_stocks removeObject:s];
}


-(float)currentValue
{
    float sum = 0;
    for (RFHStockHolding *stock in [self stocks]) {
        sum += stock.valueInDollars;
    }
    return sum;
}

-(NSArray *)topThreeHoldings
{
    NSMutableArray *topThree = [[NSMutableArray alloc] init];
    NSSortDescriptor *cvoa = [NSSortDescriptor sortDescriptorWithKey:@"currentSharePrice" ascending:NO];
    NSArray *sortedStocks = [[self stocks] sortedArrayUsingDescriptors:@[cvoa]];
    if ([self stocks]) {
        for (int i = 0; i < 3; i++) {
            [topThree addObject:[sortedStocks objectAtIndex:i]];
        }
    }
    return topThree;
}

-(float)portfolioValue
{
    float sum = 0;
    if (_stocks) {
        for (RFHStockHolding *stock in _stocks) {
            sum += ([stock valueInDollars] - [stock costInDollars]);
        }
    }
    return sum;
}

-(NSArray *)stocksAlphabetized
{
    if (_stocks) {
        //create a sortdescription
        NSSortDescriptor *alphabetized = [NSSortDescriptor sortDescriptorWithKey:@"symbol"
                                                                       ascending:YES];
        [_stocks sortUsingDescriptors:@[alphabetized]];
    }
    return _stocks;
}

@end
