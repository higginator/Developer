//
//  BNRAppDelegate.m
//  iTahDoodle
//
//  Created by Ryan Higgins on 3/24/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "BNRAppDelegate.h"

NSString *BNRDocPath()
{
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    return [pathList[0] stringByAppendingPathComponent:@"data.td"];
}

#pragma mark - Application delegate callbacks

@implementation BNRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSArray *pList = [NSArray arrayWithContentsOfFile:BNRDocPath()];
    
    if (pList) {
        self.tasks = [pList mutableCopy];
    } else {
        self.tasks = [[NSMutableArray alloc] init];
    }
    
    CGRect winFrame = [[UIScreen mainScreen] bounds];
    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:winFrame];
    self.window = theWindow;
    
    CGRect tableFrame = CGRectMake(0, 80, winFrame.size.width, winFrame.size.height - 100);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    self.taskTable = [[UITableView alloc] initWithFrame:tableFrame];
    self.taskTable.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self.taskTable registerClass:[UITableViewCell class]
           forCellReuseIdentifier:@"Cell"];
    
    self.taskTable.dataSource = self;
    
    self.taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    self.taskField.borderStyle = UITextBorderStyleRoundedRect;
    self.taskField.placeholder = @"Type a task, tap Insert";
    
    self.insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.insertButton.frame = buttonFrame;
    
    [self.insertButton setTitle:@"Insert"
                       forState:UIControlStateNormal];
    
    [self.insertButton addTarget:self
                          action:@selector(addTask:)
                forControlEvents:UIControlEventTouchUpInside];
    
    [self.window addSubview:self.taskTable];
    [self.window addSubview:self.taskField];
    [self.window addSubview:self.insertButton];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    [self.tasks writeToFile:BNRDocPath() atomically:YES];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - Actions

-(void)addTask:(id)sender
{
    //get the task
    NSString *text = [self.taskField text];
    //stop if taskField is empty
    if ([text length] == 0) {
        return;
    }
    [self.tasks addObject:text];
    [self.taskTable reloadData];
    //clear out the text field
    [self.taskField setText:@""];
    //dismiss the keyboard
    [self.taskField resignFirstResponder];
}

#pragma mark - Table view management
//2 required methods: tableView:numberOfRowsInSection: and tableView:cellForRowAtIndexPath:
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.tasks count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *c = [self.taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    NSString *item = [self.tasks objectAtIndex:indexPath.row];
    c.textLabel.text = item;
    
    return c;
}

@end
