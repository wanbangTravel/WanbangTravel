//
//  SquareTableViewCell.m
//  WanbangTravel
//
//  Created by 沈凡 on 16/4/24.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "SquareTableViewCell.h"

@interface SquareTableViewCell ()

@property (nonatomic, strong) UILabel *nameView;
@property (nonatomic, strong) UILabel *textView;
//图片
@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation SquareTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
