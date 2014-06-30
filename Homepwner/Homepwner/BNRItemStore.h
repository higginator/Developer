//
//  BNRItemStore.h
//  Homepwner
//
//  Created by Ryan Higgins on 4/23/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

@property (nonatomic, readonly) NSArray *allItems;

+(instancetype)sharedStore;

-(BNRItem *)createItem;

-(void)removeItem:(BNRItem *)item;
-(void)moveItemAtIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex;

@end
