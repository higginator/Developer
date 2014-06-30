//
//  CardGameViewController.m
//  Matchismo
//
//  Created by Ryan Higgins on 12/19/13.
//  Copyright (c) 2013 Higgy Lab. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCard.h"
#import "PlayingCardGame.h"

@interface CardGameViewController ()
@property (nonatomic, strong) PlayingCardGame *game;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButtons;
@property (weak, nonatomic) IBOutlet UILabel *scoreLabel;
@property (weak, nonatomic) IBOutlet UIButton *resetButton;
@end

@implementation CardGameViewController

-(PlayingCardGame *)game
{
    if (!_game) {
        _game = [[PlayingCardGame alloc] initWithCardCount:[self.cardButtons count]
                                                 usingDeck: [self createDeck]];
    }
    return _game;
}

-(Deck *)createDeck
{
    return nil;
}


- (IBAction)resetGame:(UIButton *)sender {
    _game = [[PlayingCardGame alloc] initWithCardCount:[self.cardButtons count]
                                             usingDeck:[self createDeck]];
    [self updateUI];
}

- (IBAction)touchCardButton:(UIButton *)sender {
    int chosenButtonIndex = [self.cardButtons indexOfObject:sender];
    [self.game chooseCardAtIndex:chosenButtonIndex];
    [self updateUI];
}

-(void) updateUI
{
    for (UIButton *cardButton in self.cardButtons) {
        int cardButtonIndex = [self.cardButtons indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardButtonIndex];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card]
                              forState:UIControlStateNormal];
        [cardButton setAttributedTitle:[self titleForCard:card]
                              forState:UIControlStateNormal];
        //[cardButton setTitleColor:[UIColor redColor]
          //               forState:UIControlStateNormal];
        cardButton.enabled = !card.isMatched;
        self.scoreLabel.text = [NSString stringWithFormat:@"Score: %d", self.game.score];
    }
}

- (NSMutableAttributedString *)titleForCard:(Card *)card
{
    if (card.isChosen) {
        NSMutableAttributedString *mutableAttributedString;
        mutableAttributedString = [[NSMutableAttributedString alloc] initWithString:card.contents];
        //NSString *lastChar = [card.contents substringFromIndex:[card.contents length] -1];
        NSString *lastChar = [card.contents substringFromIndex:[mutableAttributedString length] -2];
        if ([[PlayingCard blackSuits] containsObject:lastChar] ) {
            //for edge case 10
            if ([[card.contents substringToIndex:2] isEqualToString:@"10"]) {
                [mutableAttributedString addAttribute:NSForegroundColorAttributeName
                                                value:[UIColor blackColor]
                                                range:NSMakeRange([mutableAttributedString length] - 2, [mutableAttributedString length] - 2)];
            } else {
                [mutableAttributedString addAttribute:NSForegroundColorAttributeName
                                                value:[UIColor blackColor]
                                                range:NSMakeRange([mutableAttributedString length] - 2, [mutableAttributedString length] - 1)];
            }
        } else {
            //for edge case 10
            if ([[card.contents substringToIndex:2] isEqualToString:@"10"]) {
                [mutableAttributedString addAttribute:NSForegroundColorAttributeName
                                                value:[UIColor redColor]
                                                range:NSMakeRange([mutableAttributedString length] - 2, [mutableAttributedString length] - 2)];
            } else {
                [mutableAttributedString addAttribute:NSForegroundColorAttributeName
                                                value:[UIColor redColor]
                                                range: NSMakeRange([mutableAttributedString length] - 2, [mutableAttributedString length] - 1)];
            }
        }
        return mutableAttributedString;
    } else {
        return nil;
    }
}

- (UIImage *)backgroundImageForCard:(Card *)card
{
    return [UIImage imageNamed:card.isChosen ? @"frontcard" : @"backcard"];
}



@end
