//
//  BNRHypnoViewController.m
//  HypnoNerd
//
//  Created by Ryan Higgins on 4/2/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "BNRHypnoViewController.h"
#import "BNRHypnosisView.h"

@interface BNRHypnoViewController () <UITextFieldDelegate>

@end

@implementation BNRHypnoViewController

-(void)loadView
{
    [super loadView];
    
    BNRHypnosisView *hypnoview = [[BNRHypnosisView alloc] init];
    
    CGRect textFieldRect = CGRectMake(40, 70, 240, 30);
    UITextField *textField = [[UITextField alloc] initWithFrame:textFieldRect];
    textField.delegate = self;
    textField.borderStyle = UITextBorderStyleRoundedRect;
    textField.placeholder = @"Sleepy";
    textField.returnKeyType = UIReturnKeyDone;
    [hypnoview addSubview:textField];
    self.view = hypnoview;
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

-(void)drawHypnoticMessage:(NSString *)message
{
    for (int i = 0; i < 20; i++) {
        // allocate space and initalize label
        UILabel *messageLabel = [[UILabel alloc] init];
        
        // configure labels colors and text
        messageLabel.backgroundColor = [UIColor clearColor];
        messageLabel.textColor = [UIColor whiteColor];
        messageLabel.text = message;
        
        [messageLabel sizeToFit];
        int width = self.view.bounds.size.width - messageLabel.bounds.size.width;
        int x = arc4random() % width;
        
        int height = self.view.bounds.size.height - messageLabel.bounds.size.height;
        int y = arc4random() % height;
        NSLog(@"%d, %d", x, y);
        NSLog(@"%f, %f", messageLabel.frame.size.width, messageLabel.frame.size.height);
        CGRect frame = messageLabel.frame;
        frame.origin = CGPointMake(x, y);
        messageLabel.frame = frame;
        
        [self.view addSubview:messageLabel];
        
        // Motion Effects
        UIInterpolatingMotionEffect *motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x"
                                                                                                    type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
        motionEffect.minimumRelativeValue = @(-70);
        motionEffect.maximumRelativeValue = @(70);
        [messageLabel addMotionEffect:motionEffect];
        motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y"
                                                                       type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
        motionEffect.minimumRelativeValue = @(-25);
        motionEffect.maximumRelativeValue = @(25);
        [messageLabel addMotionEffect:motionEffect];
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    NSLog(@"%@", textField.text);
    [self drawHypnoticMessage:textField.text];
    [textField resignFirstResponder];
    return YES;
}


@end
