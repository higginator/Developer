//
//  NSDate+BNRDateConvenience.h
//  DateMonger
//
//  Created by Ryan Higgins on 3/28/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (BNRDateConvenience)

-(NSDate *)initToMidnightforYear:(int)y forMonth:(int)m forDay:(int)d;

@end
