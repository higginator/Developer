//
//  BNROwnedAppliance.h
//  Appliances
//
//  Created by Ryan Higgins on 3/28/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "BNRAppliance.h"

@interface BNROwnedAppliance : BNRAppliance

@property (readonly) NSSet *ownerNames;
// The designated initalizer
-(instancetype)initWithProductName:(NSString *)pn
                    firstOwnerName:(NSString *)n;
-(void)addOwnerNamesObject:(NSString *)n;
-(void)removeOwnerNamesObject:(NSString *)n;

@end
