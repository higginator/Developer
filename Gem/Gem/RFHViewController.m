//
//  RFHViewController.m
//  Gem
//
//  Created by Ryan Higgins on 4/12/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHViewController.h"
#import "RFHGemObject.h"

@interface RFHViewController ()

@end

@implementation RFHViewController
{
    NSMutableArray *board;
    NSMutableArray *gemHand;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    board = [[NSMutableArray alloc] init];
    gemHand = [[NSMutableArray alloc] init];
    for (int i = 0; i < 9; i++) {
        [board addObject:[RFHGemObject randomGem]];
    }
    for (int i = 0; i < 6; i++) {
        [gemHand addObject:[RFHGemObject randomGem]];
    }
    NSLog(@"My View Did Load");
    
}

#pragma mark - Collection View Methods

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [board count];
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //create a cell
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"boardCell"
                                                                           forIndexPath:indexPath];
    //grab reusable cell
    UIImageView *imageView = (UIImageView *)[cell viewWithTag:33];
    RFHGemObject *gem = [board objectAtIndex:indexPath.row];
    imageView.image = gem.gemImage;
    
    [cell.layer setBorderWidth:1.0f];
    [cell.layer setBorderColor:[UIColor whiteColor].CGColor];
    
    return cell;
}
/*
 -(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
 {
 UICollectionReusableView *reusableView = nil;
 if (kind == UICollectionElementKindSectionFooter) {
 UICollectionReusableView *footerView = [collectionView dequeueReusableCellWithReuseIdentifier:@"FooterView"
 forIndexPath:indexPath];
 NSLog(@"%lu", [footerView.subviews count]);
 UIImageView *anImageView = footerView.subviews[0];
 anImageView.image = [UIImage imageNamed:@"Chipped_Ruby.png"];
 reusableView = footerView;
 }
 
 return reusableView;
 
 }
 */
@end