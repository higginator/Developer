//
//  RFHPlayer.h
//  Element
//
//  Created by Ryan Higgins on 4/12/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RFHPlayer : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *color;
// The designated initializer
-(instancetype)initWithName:(NSString *)name Color:(NSString *)color;

@end
