//
//  BNRHypnosisView.m
//  Hypnosister
//
//  Created by Ryan Higgins on 4/1/14.
//  Copyright (c) 2014 Higgnet. All rights reserved.
//

#import "BNRHypnosisView.h"

@interface BNRHypnosisView ()
@property (nonatomic, strong) UIColor *circleColor;
@end

@implementation BNRHypnosisView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        self.circleColor = [UIColor lightGrayColor];
    }
    return self;
}

-(void)setCircleColor:(UIColor *)circleColor
{
    _circleColor = circleColor;
    [self setNeedsDisplay];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    NSLog(@"I've been touched!");
    float red = arc4random() % 100 / 100.0;
    float blue = arc4random() % 100 / 100.0;
    float green = arc4random() % 100 / 100.0;
    
    UIColor *randomColor = [UIColor colorWithRed:red
                                           green:green
                                            blue:blue
                                           alpha:1.0];
    self.circleColor = randomColor;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGRect bounds = self.bounds;
    CGPoint center;
    center.x = bounds.origin.x + bounds.size.width / 2.0;
    center.y = bounds.origin.y + bounds.size.height / 2.0;
    float maxRadius = hypotf(bounds.size.width, bounds.size.height) / 2.0;
    UIBezierPath *path = [[UIBezierPath alloc] init];
    for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20) {
        [path moveToPoint:CGPointMake(center.x + currentRadius, center.y)];
        [path addArcWithCenter:center
                        radius:currentRadius
                    startAngle:0
                      endAngle:M_PI * 2.0
                     clockwise:YES];
    }
    path.lineWidth = 10;
    [self.circleColor setStroke];
    [path stroke];
    
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"red", @"green", @"blue"]];
    segmentedControl.frame = CGRectMake(35, 200, 250, 50);
    UIColor *colx = [UIColor blueColor];
    [segmentedControl addTarget:self action:@selector(setCircleColor:col) forControlEvents:UIControlEventValueChanged];
    //UIImage *logoImage = [UIImage imageNamed:@"logo.png"];
    //[logoImage drawInRect:bounds];
}


@end
