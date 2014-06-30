//
//  RFHLineView.h
//  TouchTracker
//
//  Created by Ryan Higgins on 6/21/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RFHLine.h"

@interface RFHLineView : UIView <UIGestureRecognizerDelegate>

@property (nonatomic) UIPanGestureRecognizer *moveRecognizer;
@property (nonatomic, strong) NSMutableArray *finishedLines;
@property (nonatomic, strong) NSMutableDictionary *linesInProgress;
@property (nonatomic, weak) RFHLine *selectedLine;

@end
