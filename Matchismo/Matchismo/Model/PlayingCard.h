//
//  PlayingCard.h
//  Matchismo
//
//  Created by Ryan Higgins on 12/19/13.
//  Copyright (c) 2013 Higgy Lab. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
+ (NSArray *)blackSuits;

@end
