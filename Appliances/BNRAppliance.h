//
//  BNRAppliance.h
//  Appliances
//
//  Created by Ryan Higgins on 3/28/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRAppliance : NSObject

@property (nonatomic, copy) NSString *productName;
@property (nonatomic) int voltage;
// The designated initalizer
- (instancetype)initWithProductName:(NSString *)pn;

@end
