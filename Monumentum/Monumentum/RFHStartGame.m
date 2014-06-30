//
//  RFHStartGame.m
//  Monumentum
//
//  Created by Ryan Higgins on 6/29/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHStartGame.h"
#import "RFHGameView.h"

@interface RFHStartGame ()

@end

@implementation RFHStartGame

#pragma mark - Built in methods

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


#pragma mark - Actions

- (IBAction)createMonumentum:(id)sender {
    //RFHGameViewViewController *gameVC = [[RFHGameViewViewController alloc] init];
    
    //self.view = gameVC.view;
    RFHGameView *gameView = [[RFHGameView alloc] initWithFrame:CGRectZero];
    self.view = gameView;
}


@end
