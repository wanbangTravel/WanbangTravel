//
//  HomeTableViewCell.m
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/15.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "HomeTableViewCell.h"

@interface HomeTableViewCell ()

@property (nonatomic, strong) UIImageView *sceneryView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *contentLabel;
@property (nonatomic, strong) UILabel *priceLabel;
@property (nonatomic, assign ,getter=isShowPrice) BOOL *showPrice;

@end

@implementation HomeTableViewCell

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

//- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
//    return nil;
//}
//
//- (instancetype)initWithUITableView:(UITableView *)tableView forRowAtIndexPath:(NSIndexPath *)indexPath{
//    return nil;
//}

//1,创建可重用的自定义cell对象
+ (instancetype)homeCellWithTableView:(UITableView *)tableView {
    static NSString *reusePoolId = @"homeCell";
    HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reusePoolId];
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
        
        //旅游风景图片
        UIImageView *sceneryView = [[UIImageView alloc] init];
        [self.contentView addSubview:sceneryView];
        self.sceneryView = sceneryView;
        
        //标题
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.font = [UIFont systemFontOfSize:TitleFontSize];
        titleLabel.text = @"标题测试";
        [self.contentView addSubview:titleLabel];
        self.titleLabel = titleLabel;
        
        //正文
        UILabel *contentLabel = [[UILabel alloc] init];
        contentLabel.font = [UIFont systemFontOfSize:TextFontSize];
        contentLabel.text = @"正文测试";
        contentLabel.numberOfLines = 0;
        [self.contentView addSubview:contentLabel];
        self.contentLabel = contentLabel;
        
        //是否显示价格
        BOOL showPrice = YES;
        
        //价格
        if (showPrice) {
            UILabel *priceLabel = [[UILabel alloc] init];
            priceLabel.font = [UIFont systemFontOfSize:TextFontSize];
            priceLabel.text = @"¥88";
            priceLabel.textColor = [UIColor redColor];
            [self.contentView addSubview:priceLabel];
            self.priceLabel = priceLabel;
        }
        [self setSubViewFram];
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
- (void)setSubViewFram {
    //    self.iconView.frame = self.microBlogFrame.iconFrame;
    //    self.nameView.frame = self.microBlogFrame.nameFrame;
    //    self.vipView.frame = self.microBlogFrame.vipFrame;
    //    self.textView.frame = self.microBlogFrame.textFrame;
    //    self.pictureView.frame = self.microBlogFrame.pictureFrame;
    CGRect screen = [UIScreen mainScreen].bounds;
    self.sceneryView.frame  = CGRectMake(20, 0, screen.size.width, 80);
    self.titleLabel.frame = CGRectMake(20, 80, screen.size.width - 100, 20);
    self.contentLabel.frame = CGRectMake(20, 100, screen.size.width, 40);
    self.priceLabel.frame  = CGRectMake(screen.size.width - 80, 80, 100, 20);
}

////计算文本大小
//- (CGSize)sizeOfText:(NSString *)text maxSize:(CGSize)maxSize fontSize:(CGFloat)fontSize
//{
//    CGSize size = [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:fontSize]} context:nil].size;
//    return size;
//}


@end
