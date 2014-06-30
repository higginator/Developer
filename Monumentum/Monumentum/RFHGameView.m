//
//  RFHGameView.m
//  Monumentum
//
//  Created by Ryan Higgins on 6/29/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "RFHGameView.h"

@interface RFHGameView () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *set1Table;
@property (nonatomic, strong) UITableView *set2Table;
@property (nonatomic, strong) NSMutableArray *set1;
@property (nonatomic, strong) NSMutableArray *set2;
@property (nonatomic, strong) NSMutableArray *set3;

@end

@implementation RFHGameView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        self.set1 = [[NSMutableArray alloc] init];
        self.set2 = [[NSMutableArray alloc] init];
        self.set3 = [[NSMutableArray alloc] init];
        self.backgroundColor = [UIColor greenColor];
        [self loadSetsWithRandomWords];
        
        UILabel *set1Label = [[UILabel alloc] initWithFrame:CGRectMake(70,100,50,50)];
        set1Label.text = @"Set 1";
        
        UILabel *set2Label = [[UILabel alloc] initWithFrame:CGRectMake(210,100,50,50)];
        set2Label.text = @"Set 2";
        
        [self addSubview:set1Label];
        [self addSubview:set2Label];
        
        
        CGRect windowFrame = [[UIScreen mainScreen] bounds];
        CGRect table1Frame = CGRectMake(70, 150, 100, windowFrame.size.height - 300);
        self.set1Table = [[UITableView alloc] initWithFrame:table1Frame style:UITableViewStylePlain];
        self.set1Table.separatorStyle = UITableViewCellSeparatorStyleNone;
        //self.set1Table.delegate = self;
        
        [self.set1Table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
        
        self.set1Table.dataSource = self;
        
        [self addSubview:self.set1Table];
        
        
        CGRect table2Frame = CGRectMake(210, 150, 100, windowFrame.size.height);
        self.set2Table = [[UITableView alloc] initWithFrame:table2Frame style:UITableViewStylePlain];
        self.set2Table.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self.set2Table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
        
        self.set2Table.dataSource = self;
        
        [self addSubview:self.set2Table];

        
    }
    
    return self;
}

#pragma mark - Table View Management

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (tableView == self.set1Table) {
        return [self.set1 count];
    } else {
        return [self.set2 count];
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == self.set1Table) {
        UITableViewCell *c = [self.set1Table dequeueReusableCellWithIdentifier:@"Cell"];
        NSString *item = [self.set1 objectAtIndex:indexPath.row];
        c.textLabel.text = item;
        return c;
    } else {
        UITableViewCell *c = [self.set2Table dequeueReusableCellWithIdentifier:@"Cell"];
        NSString *item = [self.set2 objectAtIndex:indexPath.row];
        c.textLabel.text = item;
        return c;
    }

}

-(void)loadSetsWithRandomWords
{
    [self.set1 addObject:@"paper"];
    [self.set1 addObject:@"orange"];
    [self.set1 addObject:@"water"];
    [self.set1 addObject:@"plane"];
    [self.set1 addObject:@"doctor"];
    [self.set1 addObject:@"paper"];
    [self.set1 addObject:@"orange"];
    [self.set1 addObject:@"water"];
    [self.set1 addObject:@"plane"];
    [self.set1 addObject:@"doctor"];
    [self.set1 addObject:@"paper"];
    [self.set1 addObject:@"orange"];
    [self.set1 addObject:@"water"];
    [self.set1 addObject:@"plane"];
    [self.set1 addObject:@"doctor"];
    [self.set1 addObject:@"paper"];
    [self.set1 addObject:@"orange"];
    [self.set1 addObject:@"water"];
    [self.set1 addObject:@"plane"];
    [self.set1 addObject:@"doctor"];
    
    [self.set2 addObject:@"kart"];
    [self.set2 addObject:@"pillow"];
    [self.set2 addObject:@"grasshopper"];
    [self.set2 addObject:@"master"];
    [self.set2 addObject:@"backpack"];

}


@end
