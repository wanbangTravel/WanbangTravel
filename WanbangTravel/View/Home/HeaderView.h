//
//  HeaderView.h
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/18.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AdScrollView.h"
#import "AdDataModel.h"
#import "ButtonsView.h"
#import "ScrollTitleView.h"
#import "CollectionView.h"
#import "SegementView.h"
#import "PromotionView.h"

#define ADSCROLL_VIEW_HEIGHT 150
#define BUTTONS_VIEW_HEIGHT 160
#define SCROLLTITLE_VIEW_HEIGHT 40
#define COLLECTIONS_VIEW_HEIGHT 200
#define PROMOTIONS_VIEW_HEIGHT 100
#define SEGMENT_VIEW_HEIGHT 30
#define MARGIN 10

#define TOTAL_HEIGHT ADSCROLL_VIEW_HEIGHT + BUTTONS_VIEW_HEIGHT + SCROLLTITLE_VIEW_HEIGHT + COLLECTIONS_VIEW_HEIGHT + PROMOTIONS_VIEW_HEIGHT + SEGMENT_VIEW_HEIGHT + 5 * MARGIN

@interface HeaderView : UIView

//广告视图
@property (nonatomic, strong) UIView *adScrollView;
//按钮视图
@property (nonatomic, strong) UIView *buttonsView;
//滚动新闻视图
@property (nonatomic, strong) UIView *scrollTitleView;
//格子广告视图
@property (nonatomic, strong) UIView *collectionsView;
//促销视图
@property (nonatomic, strong) UIView *promotionView;
//度周末/度长假 切换视图
@property (nonatomic, strong) UIView *segmentView;

//整合所有子视图成一个视图，返回给viewcontroller
+ (UIView *)generateHeaderView;

@end
