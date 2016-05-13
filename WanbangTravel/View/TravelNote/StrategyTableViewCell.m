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

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) UIImageView *sceneryImageView;
@property (nonatomic, strong) UILabel *commentLabel;
@property (nonatomic, strong) UILabel *followsCountLabel;

@end

@implementation StrategyTableViewCell


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

- (void)generateSubViews {
    //图片视图
    UIImageView *imgView = [[UIImageView alloc] init];
    _sceneryImageView = imgView;
    [self.contentView addSubview:imgView];
    
    //标题视图
    UILabel *titleView = [[UILabel alloc] init];
    _titleLabel = titleView;
    [self.contentView addSubview:titleView];
    
    //底部其他视图
    UILabel *timeView = [[UILabel alloc] init];
    _timeLabel  = timeView;
    [self.contentView addSubview:timeView];
    
    UILabel *commentView = [[UILabel alloc] init];
    _commentLabel = commentView;
    [self.contentView addSubview:commentView];
}


//1,创建可重用的自定义cell对象
+ (instancetype)homeCellWithTableView:(UITableView *)tableView {
    static NSString *reusePoolId = @"strategyCell";
    StrategyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reusePoolId];
    if (!cell) {
        cell = [[self alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusePoolId];
        //添加子控件
    }
    return cell;
}

//重写构造方法 初始化 (创建自定义cell内部的子控件)
- (instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if(self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
        //创建子控件
        [self generateSubViews];
        //设置Frame
        [self setSubViewsFrame];
    }
    return self;
}

//2,重写setter方法
//- (void)setMicroBlog:(MicroBlog *)microBlog
//{
//    _microBlog = microBlog;
//    //1,设置子控显示的内容
//    [self setSubViewsContent];
//    //2,设置子控件显示的位置
//    [self setSubViewFram];
//}

//-(void)setHomeCellFrame:(HomeCellFrame *)homeCellFrame {
//    _microBlogFrame = microBlogFrame;
//    //1,设置子控显示的内容
//    [self setSubViewsContent];
//    //2,设置子控件显示的位置
//    [self setSubViewFram];
//}
//
////设置子控显示的内容
//- (void)setSubViewsContent
//{
//    MicroBlog *microBlog = self.microBlogFrame.microBlog;
//    self.iconView.image = [UIImage imageNamed:microBlog.icon];
//    self.nameView.text = microBlog.name;
//    //self.vipView.image = self.microBlog.isVip?[UIImage imageNamed:@"vip"]:nil;
//    if(!microBlog.isVip)
//    {
//        self.vipView.hidden = YES;
//        self.nameView.textColor = [UIColor blackColor];
//    }else
//    {
//        self.vipView.hidden = NO;
//        self.nameView.textColor = [UIColor redColor];
//    }
//    self.textView.text = microBlog.text;
//    if(microBlog.picture)
//    {
//        self.pictureView.image = [UIImage imageNamed:microBlog.picture];
//    }
//}


//设置子控件显示的位置
- (void)setSubViewsFrame {
    CGRect screen = [UIScreen mainScreen].bounds;
    self.sceneryImageView.frame  = CGRectMake(20, 0, screen.size.width, 80);
    self.titleLabel.frame = CGRectMake(20, 80, screen.size.width - 100, 20);
    self.timeLabel.frame = CGRectMake(20, 100, screen.size.width, 40);
    self.commentLabel.frame  = CGRectMake(screen.size.width - 80, 80, 100, 20);
}


@end
