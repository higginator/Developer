//
//  RFHProtfolio.h
//  ChallengeStocks
//
//  Created by Ryan Higgins on 3/12/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>
@class RFHStockHolding;

@interface RFHPortfolio : NSObject


@property (nonatomic) NSArray *stocks;


-(float)currentValue;
-(void)addStock:(RFHStockHolding *)s;
-(void)removeStock:(RFHStockHolding *)s;
-(NSArray *)topThreeHoldings;
-(float)portfolioValue;
-(NSArray *)stocksAlphabetized;

@end
