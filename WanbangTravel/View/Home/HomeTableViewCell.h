//
//  HomeTableViewCell.h
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/15.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import <UIKit/UIKit.h>

#define TitleFontSize 14
#define TextFontSize 10
#define PriceFontSize 18

@interface HomeTableViewCell : UITableViewCell

//@property (nonatomic,strong) HomeTableViewCell *microBlog;
//@property (nonatomic,strong) HomeTableViewCellFrame *microBlogFrame;

+ (instancetype)homeCellWithTableView:(UITableView *)tableView;

@end
