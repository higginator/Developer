//
//  BNRAppDelegate.h
//  iTahDoodle
//
//  Created by Ryan Higgins on 3/24/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <UIKit/UIKit.h>

//helper function to find location of file on disk
NSString *BNRDocPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic) UITableView *taskTable;
@property (nonatomic) UITextField *taskField;
@property (nonatomic) UIButton *insertButton;

@property (nonatomic) NSMutableArray *tasks;

-(void)addTask:(id)sender;

@end
