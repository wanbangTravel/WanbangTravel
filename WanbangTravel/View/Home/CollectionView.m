//
//  CollectionView.m
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/15.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "CollectionView.h"

#define VIEW_HEIGHT self.frame.size.height
#define VIEW_WIDTH self.frame.size.width

//左上角图片大小
#define LEFT_TOP_IMAGEVIEW_WIDTH VIEW_WIDTH / 2
#define LEFT_TOP_IMAGEVIEW_HEIGHT VIEW_HEIGHT / 2
//右上角图片大小
#define RIGHT_TOP_IMAGEVIEW_WIDTH VIEW_WIDTH / 2
#define RIGHT_TOP_IMAGEVIEW_HEIGHT VIEW_HEIGHT / 4
//左下角图片大小
#define LEFT_BOTTOM_IMAGEVIEW_WIDTH VIEW_WIDTH  * 2.0 / 3 / 2
#define LEFT_BOTTOM_IMAGEVIEW_HEIGHT VIEW_HEIGHT / 4
//右下角图片大小
#define RIGHT_BOTTOM_IMAGEVIEW_WIDTH VIEW_WIDTH * 1.0 / 3
#define RIGHT_BOTTOM_IMAGEVIEW_HEIGHT VIEW_HEIGHT / 2

@implementation CollectionView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self generateCollectionView];
    }
    return self;
}


- (void)generateCollectionView{
    //左上角图片
    UIImageView *leftTopImageView = [[UIImageView alloc] init];
    leftTopImageView.frame = CGRectMake(0, 0, LEFT_TOP_IMAGEVIEW_WIDTH, LEFT_TOP_IMAGEVIEW_HEIGHT);
    [leftTopImageView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:leftTopImageView];
    
    //右上角图片
    for (int i = 0; i < 2; i++) {
        UIImageView *tempView = [[UIImageView alloc] init];
        tempView.frame = CGRectMake(LEFT_TOP_IMAGEVIEW_WIDTH, i * RIGHT_TOP_IMAGEVIEW_HEIGHT, RIGHT_TOP_IMAGEVIEW_WIDTH, RIGHT_TOP_IMAGEVIEW_HEIGHT);
        [tempView setBackgroundColor:[UIColor greenColor]];
        [self addSubview:tempView];
    }
    
    //左下角四张图片
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            UIImageView *imgView = [[UIImageView alloc] init];
            imgView.frame = CGRectMake(j * (LEFT_BOTTOM_IMAGEVIEW_WIDTH), i *(LEFT_BOTTOM_IMAGEVIEW_HEIGHT) + LEFT_TOP_IMAGEVIEW_HEIGHT, LEFT_BOTTOM_IMAGEVIEW_WIDTH, LEFT_BOTTOM_IMAGEVIEW_HEIGHT);
            [imgView setBackgroundColor:[UIColor blackColor]];
            [self addSubview:imgView];
        }
    }
    //右下角图片
    UIImageView *rightBottomImageView = [[UIImageView alloc] init];
    rightBottomImageView.frame = CGRectMake(2 * LEFT_BOTTOM_IMAGEVIEW_WIDTH, LEFT_TOP_IMAGEVIEW_HEIGHT, RIGHT_BOTTOM_IMAGEVIEW_WIDTH, RIGHT_BOTTOM_IMAGEVIEW_HEIGHT);
    [rightBottomImageView setBackgroundColor:[UIColor yellowColor]];
    [self addSubview:rightBottomImageView];
}

@end
