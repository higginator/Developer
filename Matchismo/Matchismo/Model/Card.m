//
//  Card.m
//  Matchismo
//
//  Created by Ryan Higgins on 12/19/13.
//  Copyright (c) 2013 Higgy Lab. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

-(int)match: (NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
