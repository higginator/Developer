//
//  BNRItem.h
//  RandomItems
//
//  Created by Ryan Higgins on 3/30/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject


@property (nonatomic, copy) NSString *itemName;
@property (nonatomic, copy) NSString *serialNumber;
@property (nonatomic) int valueInDollars;
@property (nonatomic, strong, readonly) NSDate *dateCreated;
@property (nonatomic, strong) BNRItem *containedItem;
@property (nonatomic, weak) BNRItem *container;

+(instancetype)randomItem;

// The designated initializer
-(instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)num valueInDollars:(int)value;
-(instancetype)initWithItemName:(NSString *)name;

@end
