//
//  BNREmployee.h
//  BMITool
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRPerson.h"
@class BNRAsset;

@interface BNREmployee : BNRPerson


@property (nonatomic) unsigned int employeeID;
@property (nonatomic) NSDate *hireDate;
@property (nonatomic, copy) NSSet *assets;

-(double)yearsOfEmployment;
-(void)addAsset:(BNRAsset *)a;
-(void)removeAsset:(BNRAsset *)a;
-(unsigned int)valueOfAssets;

@end
