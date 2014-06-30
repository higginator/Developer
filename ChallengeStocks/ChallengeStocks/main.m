//
//  main.m
//  ChallengeStocks
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RFHForeignStockHolding.h"
#import "RFHPortfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        RFHPortfolio *myStocks = [[RFHPortfolio alloc] init];
        
        RFHStockHolding *chevron = [[RFHStockHolding alloc] init];
        [chevron setNumberOfShares:40];
        [chevron setPurchaseSharePrice:125];
        [chevron setCurrentSharePrice:130];
        [chevron setSymbol:@"CVX"];
        
        NSLog(@"Chevron exists at %p", chevron);
        
        [myStocks addStock:chevron];
        
        NSLog(@"here");
        NSLog(@"my stock is addressed at %p", myStocks);
        NSLog(@"my stock are %@", [myStocks stocks]);
        RFHStockHolding *blizzard = [[RFHStockHolding alloc] init];
        [blizzard setNumberOfShares:1337];
        [blizzard setPurchaseSharePrice:15];
        [blizzard setCurrentSharePrice:35];
        [blizzard setSymbol:@"ATVI"];
        
        
        [myStocks addStock:blizzard];
        
        RFHStockHolding *pixar = [[RFHStockHolding alloc] init];
        [pixar setNumberOfShares:1];
        [pixar setPurchaseSharePrice:200];
        [pixar setCurrentSharePrice:300];
        [pixar setSymbol:@"PXR"];
        
        [myStocks addStock:pixar];
        
        RFHForeignStockHolding *foreignBank = [[RFHForeignStockHolding alloc] init];
        [foreignBank setNumberOfShares:20];
        [foreignBank setPurchaseSharePrice: 780];
        [foreignBank setCurrentSharePrice:650];
        foreignBank.conversionRate = 1.5;
        [foreignBank setSymbol:@"FB"];
        
        [myStocks addStock:foreignBank];
        
        RFHForeignStockHolding *tanTan = [[RFHForeignStockHolding alloc] init];
        tanTan.numberOfShares = 80;
        tanTan.purchaseSharePrice = 40;
        tanTan.currentSharePrice = 400;
        tanTan.conversionRate = 0.3;
        [tanTan setSymbol:@"TT"];
        
        [myStocks addStock:tanTan];
        
        for (RFHStockHolding *stock in [myStocks stocks]) {
            NSLog(@"My stock in %@ is worth %.2f", stock, [stock valueInDollars] - [stock costInDollars]);
        }
        
        NSLog(@"My top 3 holdings are: %@", [myStocks topThreeHoldings]);
        for (RFHStockHolding *stock in [myStocks topThreeHoldings]) {
            NSLog(@"Value of %@ is %f", stock, stock.currentSharePrice);
        }
        
        NSLog(@"My portfolio is worth %f dollars", [myStocks portfolioValue]);
        
        for (RFHStockHolding *stock in [myStocks stocksAlphabetized]) {
            NSLog(@"%@", [stock symbol]);
        }
        
    }
    return 0;
}

