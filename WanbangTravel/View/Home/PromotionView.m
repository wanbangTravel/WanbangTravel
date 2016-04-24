//
//  PromotionView.m
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/15.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "PromotionView.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define TITLE_FONTSIZE 14


@implementation PromotionView

- (instancetype)init {
    if (self = [super init]) {
        [self generateView];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self generateView];
    }
    return self;
}

- (void)generateView {
    //限时抢购标题
    UILabel *promotionLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, SCREEN_WIDTH - 20, 20)];
    promotionLabel.text = @"限时抢购";
    promotionLabel.font = [UIFont systemFontOfSize:TITLE_FONTSIZE];
    promotionLabel.textAlignment = NSTextAlignmentLeft;
    [self addSubview:promotionLabel];
    
    //滚动抢购
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 20, SCREEN_WIDTH, self.frame.size.height - 20)];
    [scrollView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:scrollView];
    
}
@end
