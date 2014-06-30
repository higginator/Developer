//
//  PlayingCardGame.h
//  Matchismo
//
//  Created by Ryan Higgins on 12/22/13.
//  Copyright (c) 2013 Higgy Lab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"
#import "Deck.h"

@interface PlayingCardGame : NSObject

// designated initializer
-(instancetype)initWithCardCount:(NSUInteger) count
                       usingDeck:(Deck *)deck;

-(void)chooseCardAtIndex:(NSUInteger)index;
-(Card *)cardAtIndex:(NSUInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
