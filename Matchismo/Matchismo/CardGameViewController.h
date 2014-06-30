//
//  CardGameViewController.h
//  Matchismo
//
//  Created by Ryan Higgins on 12/19/13.
//  Copyright (c) 2013 Higgy Lab. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface CardGameViewController : UIViewController

-(Deck *)createDeck;

@end
