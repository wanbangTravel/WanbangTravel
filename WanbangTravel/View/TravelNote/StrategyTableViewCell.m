//
//  StrategyTableViewCell.m
//  WanbangTravel
//
//  Created by 沈凡 on 16/4/24.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "StrategyTableViewCell.h"

#define UISCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define UISCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define MARGIN 10


@interface StrategyTableViewCell ()

@property (nonatomic, strong) UILabel *titleView;
@property (nonatomic, strong) UILabel *timeView;
@property (nonatomic, strong) UIImageView *imgView;

@end

@implementation StrategyTableViewCell


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        [self generateSubViews];
        [self setFramesForSubviews];
    }
    return self;
}

- (void)generateSubViews {
    //图片视图
    UIImageView *imgView = [[UIImageView alloc] init];
    //[[UIImageView alloc] initWithFrame:CGRectMake(MARGIN, MARGIN, 100, self.bounds.size.height - 2 * MARGIN)];
    _imgView = imgView;
    [self.contentView addSubview:imgView];
    
    //标题视图
    UILabel *titleView = [[UILabel alloc] init];
    //[[UILabel alloc] initWithFrame:CGRectMake(CGRectGetMaxX(imgView.frame) + MARGIN, MARGIN, UISCREEN_WIDTH - 10, 100)];
    _titleView = titleView;
    [self.contentView addSubview:titleView];
    
    //底部其他视图
    UILabel *timeView = [[UILabel alloc] init];
    _timeView  = timeView;
    [self.contentView addSubview:timeView];
}

- (void)setFramesForSubviews{
    
}

@end
