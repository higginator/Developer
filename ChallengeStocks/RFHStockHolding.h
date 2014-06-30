//
//  RFHStockHolding.h
//  ChallengeStocks
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RFHStockHolding : NSObject
{
    //instance variables
    //purchaseSharePrice and currentSharePrice are in local currency
    float _purchaseSharePrice;
    float _currentSharePrice;
    int _numberOfShares;
}

@property (nonatomic) NSString *symbol;

//accessor methods
-(float)purchaseSharePrice;
-(void)setPurchaseSharePrice:(float)p;
-(float)currentSharePrice;
-(void)setCurrentSharePrice:(float)p;
-(int)numberOfShares;
-(void)setNumberOfShares:(int)s;

-(float)costInDollars;
-(float)valueInDollars;

@end
