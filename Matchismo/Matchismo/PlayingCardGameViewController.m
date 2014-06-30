//
//  PlayingCardGameViewController.m
//  Matchismo
//
//  Created by Ryan Higgins on 1/2/14.
//  Copyright (c) 2014 Higgy Lab. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardGameViewController ()

@end

@implementation PlayingCardGameViewController

-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}
@end
