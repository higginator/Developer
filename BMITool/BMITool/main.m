//
//  main.m
//  BMITool
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNREmployee.h"
#import "BNRAsset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        //create an array of BNREmployee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];
        
        for (int i=0; i < 10; i++) {
            BNREmployee *randomEmployee = [[BNREmployee alloc] init];
            [randomEmployee setWeightInKilos:60 + i];
            [randomEmployee setHeightInMeters:1.7 + i/10];
            [randomEmployee setEmployeeID:i];
            
            [employees addObject:randomEmployee];
            
            if (i==0) {
                [executives setObject:randomEmployee forKey:@"CEO"];
            }
            
            if (i==1) {
                [executives setObject:randomEmployee forKey:@"CTO"];
            }
        }
        
        NSMutableArray *allAssets = [[NSMutableArray alloc] init];
        
        //create 10 assets
        for (int i=0; i < 10; i++) {
            BNRAsset *asset = [[BNRAsset alloc] init];
            NSString *label = [NSString stringWithFormat:@"Laptop %d", i];
            asset.label = label;
            [asset setResaleValue:350 + i * 17];
            
            //Random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            //pick a random employee
            BNREmployee *employee = [employees objectAtIndex:randomIndex];
            
            //assigns asset to employee
            [employee addAsset:asset];
            
            [allAssets addObject:asset];
        }
        
        //sorting using sortDescriptors!
        NSSortDescriptor *voa = [NSSortDescriptor sortDescriptorWithKey:@"valueOfAssets" ascending:YES];
        NSSortDescriptor *eid = [NSSortDescriptor sortDescriptorWithKey:@"employeeID" ascending:YES];
        
        [employees sortUsingDescriptors:@[voa, eid]];
        
        //filtering using predicates!
        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 800"];
        NSArray *arrayToBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
        NSLog(@"Here is the assets to be reclaimed: %@", arrayToBeReclaimed);
        arrayToBeReclaimed = nil;
        
        
        NSLog(@"executives: %@", executives);
        
        NSLog(@"The CEO is %@", executives[@"CEO"]);
        executives = nil;
        NSLog(@"Employees: %@", employees);
        
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of arrays");
        
        employees = nil;
    }
    sleep(100);
    return 0;
}

