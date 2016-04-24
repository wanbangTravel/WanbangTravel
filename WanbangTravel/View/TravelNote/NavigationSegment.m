//
//  NavigationSegment.m
//  WanbangTravel
//
//  Created by 沈凡 on 16/4/24.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "NavigationSegment.h"

#define VIEW_WIDTH self.bounds.size.width
#define VIEW_HEIGHT self.bounds.size.height

@implementation NavigationSegment

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self generateView];
    }
    return self;
}

- (void)generateView {
    
    UIButton *leftBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    leftBtn.frame  = CGRectMake((VIEW_WIDTH - 120) / 2, (VIEW_HEIGHT - 20) / 2, 60, 20);
    //[[UIButton alloc] initWithFrame:CGRectMake(0, 0,VIEW_WIDTH / 2, VIEW_HEIGHT)];
    leftBtn.titleLabel.textColor = [UIColor redColor];
    [leftBtn setTitle:@"攻略" forState:UIControlStateNormal];
    [leftBtn setBackgroundColor:[UIColor redColor]];
    
    [self addSubview:leftBtn];
    
    UIButton *rightBtn = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetMaxX(leftBtn.frame), (VIEW_HEIGHT - 20) / 2, 60, 20)];
    [rightBtn setTitle:@"广场" forState:UIControlStateNormal];
    rightBtn.titleLabel.textColor = [UIColor redColor];
    [rightBtn setBackgroundColor:[UIColor redColor]];
    [self addSubview:rightBtn];
}

@end
