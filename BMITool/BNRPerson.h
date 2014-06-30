//
//  BMITool.h
//  BMITool
//
//  Created by Ryan Higgins on 3/11/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRPerson : NSObject

@property (nonatomic) float heightInMeters;
@property (nonatomic) int weightInKilos;
/*
 No longer needed because using @property!!
 
{
    //instance variables
    int _weightInKilos;
    float _heightInMeters;
}

//instance methods begin with a '-' !
- (int)weightInKilos;
- (float)heightInMeters;
- (void)setWeightInKilos:(int)w;
- (void)setHeightInMeters:(float)h;
*/
- (float)bodyMassIndex;
- (void) addMyselfToAnArray:(NSMutableArray *)array;
@end
