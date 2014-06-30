//
//  RFHViewController.m
//  Element
//
//  Created by Ryan Higgins on 4/12/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHViewController.h"
#import "RFHGemObject.h"
#import "RFHHumanPlayer.h"
#import "RFHRobotPlayer.h"

@interface RFHViewController ()

@end

@implementation RFHViewController
{
    RFHHumanPlayer *human;
    RFHRobotPlayer *robot;
    NSMutableArray *board;
    NSMutableArray *gemHand;
    NSInteger moveCount;

}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //register collection cell in view did load
    
    board = [[NSMutableArray alloc] init];
    [board addObject:[RFHGemObject randomGem]];
    [board addObject:[RFHGemObject randomGem]];
    [board addObject:[RFHGemObject randomGem]];
    
    [board addObject:[RFHGemObject randomGem]];
    [board addObject:[RFHGemObject randomGem]];
    [board addObject:[RFHGemObject randomGem]];
    
    [board addObject:[RFHGemObject randomGem]];
    [board addObject:[RFHGemObject randomGem]];
    [board addObject:[RFHGemObject randomGem]];
    
    NSLog(@"%@", board);
    
    gemHand = [[NSMutableArray alloc] init];
    [gemHand addObject:[RFHGemObject randomGem]];
    [gemHand addObject:[RFHGemObject randomGem]];
    [gemHand addObject:[RFHGemObject randomGem]];
    
    [gemHand addObject:[RFHGemObject randomGem]];
    [gemHand addObject:[RFHGemObject randomGem]];
    [gemHand addObject:[RFHGemObject randomGem]];
    
    human = [[RFHHumanPlayer alloc] initWithName:@"Ash" Color:@"Orange"];
    
    [self beginGameLoop];
}

-(instancetype)init{
    if (self = [super init]) {
    }
    return self;
}

#pragma mark - Collection View Methods


-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    if ([collectionView tag] == 50) {
        NSLog(@"heuh");
        return [board count];
    } else {
        NSLog(@"got em");
        return [gemHand count];
    }
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{

    if ([collectionView tag] == 60) {
        NSLog(@"in here");
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"GemCell"
                                                                               forIndexPath:indexPath];
        UIImageView *anotherImageView = (UIImageView *)[cell viewWithTag:33];
        anotherImageView.image = [gemHand objectAtIndex:indexPath.row];
        
        [cell.layer setBorderWidth:1.0f];
        [cell.layer setBorderColor:[UIColor whiteColor].CGColor];
        
        return cell;

    } else {
        
        
        NSLog(@"and here");
        
        UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell"
                                                                               forIndexPath:indexPath];
        UIImageView *imageView = (UIImageView *)[cell viewWithTag:84];
        imageView.image = [board objectAtIndex:indexPath.row];
        
        [cell.layer setBorderWidth:1.0f];
        [cell.layer setBorderColor:[UIColor whiteColor].CGColor];
        
        return cell;
    };
    
}

#pragma mark - Custom Game Functions

-(BOOL)isGameOver
{
    if (moveCount == 9) {
        return true;
    }
    return false;
}

-(NSString *)declareWinner
{
    int humanTotal;
    for (RFHGemObject *gem in board) {
        if (gem.color == human.color) {
            humanTotal++;
        }
    }
    if (humanTotal >= 5) {
        return human.name;
    }
    return robot.name;
}

-(void)beginGameLoop {
    //show screen counting down till game begins, then load board and gem hand
    if (![self isGameOver]) {
        //allow player to make move
        //allow robot to make move
    }
    NSString *winner = [self declareWinner];
}

-(void)boardCheck:(RFHGemObject *)sender {
    //check adajacencies
    if ([board indexOfObject:sender] == 0) {
        //check board[1] and board[3]
        if ([board objectAtIndex:1] != nil) {
            RFHGemObject *gem = board[1];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:3] != nil) {
            RFHGemObject *gem = board[3];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
    } else if ([board indexOfObject:sender] == 1) {
        //check board[0] and board[2]
        if ([board objectAtIndex:0] != nil) {
            RFHGemObject *gem = board[0];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:2] != nil) {
            RFHGemObject *gem = board[2];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        
    } else if ([board indexOfObject:sender] == 2) {
        //check board[1] and board[5]
        if ([board objectAtIndex:1] != nil) {
            RFHGemObject *gem = board[1];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:5] != nil) {
            RFHGemObject *gem = board[5];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        
        
    } else if ([board indexOfObject:sender] == 3) {
        //check board[0] and board[4] and board[6]
        if ([board objectAtIndex:0] != nil) {
            RFHGemObject *gem = board[0];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:4] != nil) {
            RFHGemObject *gem = board[4];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:4] != nil) {
            RFHGemObject *gem = board[4];
                if (sender.value > gem.value) {
                    gem.color = sender.color;
                }
        }
        
    } else if ([board indexOfObject:sender] == 4) {
        //check board[1] and board[3] and board[5] and board[7]
        if ([board objectAtIndex:1] != nil) {
            RFHGemObject *gem = board[1];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:3] != nil) {
            RFHGemObject *gem = board[3];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:5] != nil) {
            RFHGemObject *gem = board[5];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:7] != nil) {
            RFHGemObject *gem = board[7];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }

        
    } else if ([board indexOfObject:sender] == 5) {
        //check board[2] and board[4] and board[8]
        if ([board objectAtIndex:2] != nil) {
            RFHGemObject *gem = board[2];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:4] != nil) {
            RFHGemObject *gem = board[4];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:8] != nil) {
            RFHGemObject *gem = board[8];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        
    } else if ([board indexOfObject:sender] == 6) {
        //check board[3] and board[7]
        if ([board objectAtIndex:3] != nil) {
            RFHGemObject *gem = board[3];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:7] != nil) {
            RFHGemObject *gem = board[7];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
 
        
    } else if ([board indexOfObject:sender] == 7) {
        //check board[6] and board[4] and board[8]
        if ([board objectAtIndex:6] != nil) {
            RFHGemObject *gem = board[6];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:4] != nil) {
            RFHGemObject *gem = board[4];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:8] != nil) {
            RFHGemObject *gem = board[8];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        
    } else if ([board indexOfObject:sender] == 8) {
        //check board[7] and board[5]
        if ([board objectAtIndex:7] != nil) {
            RFHGemObject *gem = board[7];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        if ([board objectAtIndex:5] != nil) {
            RFHGemObject *gem = board[5];
            if (sender.value > gem.value) {
                gem.color = sender.color;
            }
        }
        
    }
    
    moveCount++;
}

@end
