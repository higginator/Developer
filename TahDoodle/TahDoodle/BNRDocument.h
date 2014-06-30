//
//  BNRDocument.h
//  TahDoodle
//
//  Created by Ryan Higgins on 3/26/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument
    <NSTableViewDataSource>

@property (nonatomic) NSMutableArray *tasks;
@property (nonatomic) IBOutlet NSTableView *taskTable;

-(IBAction)addTask:(id)sender;

@end
