//
//  Deck.h
//  Matchismo
//
//  Created by Ryan Higgins on 12/19/13.
//  Copyright (c) 2013 Higgy Lab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

-(void)addCard:(Card *)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;
-(void)removeCard:(Card *)card;
-(void)showCards;
-(int)deckLength;
-(Card *)drawRandomCard;

@end
