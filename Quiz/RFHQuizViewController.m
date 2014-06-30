//
//  RFHQuizViewController.m
//  Quiz
//
//  Created by Ryan Higgins on 3/30/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHQuizViewController.h"

@interface RFHQuizViewController ()

@property (nonatomic) int questionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic) IBOutlet UILabel *questionLabel;
@property (nonatomic) IBOutlet UILabel *answerLabel;

@end

@implementation RFHQuizViewController

#pragma mark - View Controller Defaults

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.questions = @[@"What is her favorite color?",
                      @"What is my mother's name?",
                      @"Where is she from?"];
        
        self.answers = @[@"Purple",
                         @"Jane",
                         @"Japan"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Actions

-(IBAction)showQuestion:(id)sender
{
    self.questionIndex++;
    
    if (self.questionIndex >= [self.questions count]) {
        self.questionIndex = 0;
    }
    self.questionLabel.text = self.questions[self.questionIndex];
    self.answerLabel.text = @"???";
}

-(IBAction)showAnswer:(id)sender
{
    self.answerLabel.text = self.answers[self.questionIndex];
}

@end
