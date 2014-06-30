//
//  BNRHypnoViewController.m
//  HypnoNerd
//
//  Created by Ryan Higgins on 4/2/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "BNRHypnoViewController.h"
#import "BNRHypnosisView.h"

@implementation BNRHypnoViewController

-(void)loadView
{
    [super loadView];
    BNRHypnosisView *hypnoview = [[BNRHypnosisView alloc] init];
    self.view = hypnoview;
    NSLog(@"The loadView function has been called");
}

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        self.tabBarItem.title = @"Hypnotize";
        self.tabBarItem.image = [UIImage imageNamed:@"Hypno.png"];
    }
    return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Hypnosis Loaded!");
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"Hypnosis View about to appear!");
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"The View did appear!");
}
@end
