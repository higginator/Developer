//
//  RFHAppDelegate.m
//  Monumentum
//
//  Created by Ryan Higgins on 6/29/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHAppDelegate.h"
#import "RFHStartGame.h"

@implementation RFHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    RFHStartGame *startGameVC = [[RFHStartGame alloc] init];

    self.window.rootViewController = startGameVC;
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
