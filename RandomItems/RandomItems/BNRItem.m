//
//  BNRItem.m
//  RandomItems
//
//  Created by Ryan Higgins on 3/30/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem


-(NSString *)description
{
    NSString *descript = [NSString stringWithFormat:@"%@ (%@): worth $%d, created on %@",
                          self.itemName,
                          self.serialNumber,
                          self.valueInDollars,
                          self.dateCreated];
    return descript;
}

-(void)dealloc
{
    NSLog(@"I am being deallocated!");
}

#pragma mark - Initalizers

-(instancetype)initWithItemName:(NSString *)name serialNumber:(NSString *)num valueInDollars:(int)value
{
    self = [super init];
    
    if (self) {
        _itemName = name;
        _serialNumber = num;
        _valueInDollars = value;
        _dateCreated = [[NSDate alloc] init];
    }
    
    return self;
}

-(instancetype)initWithItemName:(NSString *)name
{
    return [self initWithItemName:name serialNumber:@"" valueInDollars:0];
}

-(instancetype)init
{
    return [self initWithItemName:@"Unknown"];
}

#pragma mark - Class Methods

+(instancetype)randomItem
{
    //array of adjectives

    NSArray *adjectives = @[@"Rusty", @"Shiny", @"Genial", @"Golden"];
    
    //array of nouns
    NSArray *nouns = @[@"Bear", @"Printer", @"Book", @"Stock"];
    
    //use mod and arc4random to randomly select from the two
    int adjectivesIndex = arc4random() % [adjectives count];
    int nounsIndex = arc4random() % [nouns count];
    NSString *name = [NSString stringWithFormat:@"%@ %@", adjectives[adjectivesIndex], nouns[nounsIndex]];
    
    //random serial number
    NSString *serialNumber = [NSString stringWithFormat:@"%c%c%c%c%c",
                              '0' + arc4random() % 10,
                              'A' + arc4random() % 26,
                              '0' + arc4random() % 10,
                              'A' + arc4random() % 26,
                              '0' + arc4random() % 10];
    
    //random value 1-100
    int randomValue = arc4random_uniform(100);
    //initialize self with name
    //self in a class/convenience method refers to the class itself
    return [[self alloc] initWithItemName:name
                             serialNumber:serialNumber
                           valueInDollars:randomValue];
}

#pragma mark - Accessor Methods

-(void)setContainedItem:(BNRItem *)containedItem
{
    _containedItem = containedItem;
    containedItem.container = self;
}

@end
