//
//  BNRAsset.h
//  BMITool
//
//  Created by Ryan Higgins on 3/12/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>
@class BNREmployee;

@interface BNRAsset : NSObject

@property (nonatomic, weak) BNREmployee *holder;
@property (nonatomic, copy) NSString *label;
@property (nonatomic) unsigned int resaleValue;

@end
