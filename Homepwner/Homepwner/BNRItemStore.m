//
//  BNRItemStore.m
//  Homepwner
//
//  Created by Ryan Higgins on 4/23/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"
#import "BNRImageStore.h"

@interface BNRItemStore ()

@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation BNRItemStore

#pragma mark - Initializers

+(instancetype)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}



-(instancetype)init
{
    @throw [NSException exceptionWithName:@"Wrong initializer"
                                   reason:@"use +(sharedStore)"
                                 userInfo:nil];
}

-(instancetype)initPrivate
{
    if (self=[super init]) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}

#pragma mark - Instance Methods

-(BNRItem *)createItem
{
    BNRItem *item = [BNRItem randomItem];
    [self.privateItems addObject:item];
    return item;
}


#pragma mark - Private Methods

-(void)removeItem:(BNRItem *)item
{
    [self.privateItems removeObjectIdenticalTo:item];
    NSString *key = item.itemKey;
    [[BNRImageStore sharedStore] deleteImageForKey:key];
}

-(void)moveItemAtIndex:(NSUInteger)fromIndex toIndex:(NSUInteger)toIndex
{
    if (fromIndex == toIndex) {
        return;
    }
    BNRItem *item = self.privateItems[fromIndex];
    [self.privateItems removeObjectAtIndex:fromIndex];
    [self.privateItems insertObject:item atIndex:toIndex];
}

#pragma mark - Accessor Methods

-(NSArray *)allItems
{
    return self.privateItems;
}

@end
