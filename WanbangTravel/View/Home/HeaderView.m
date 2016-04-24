//
//  HeaderView.m
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/18.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "HeaderView.h"

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

@interface HeaderView () {
    
}

@end

@implementation HeaderView

- (instancetype)init {
    if(self = [super init]) {
        self.frame = CGRectMake(0, 0,SCREEN_WIDTH, TOTAL_HEIGHT);
        
        AdScrollView *scrollView = [[AdScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, ADSCROLL_VIEW_HEIGHT)];
        
        AdDataModel *dataModel = [AdDataModel adDataModelWithImageNameAndAdTitleArray];
        //如果滚动视图的父视图由导航控制器控制,必须要设置该属性(ps,猜测这是为了正常显示,导航控制器内部设置了UIEdgeInsetsMake(64, 0, 0, 0))
        //scrollView.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0);
        [scrollView setImageNameArray:dataModel.imageNameArray];
        [scrollView setAdTitleArray:dataModel.adTitleArray withShowStyle:AdTitleShowStyleLeft];
        
        scrollView.PageControlShowStyle = UIPageControlShowStyleCenter;
        scrollView.pageControl.pageIndicatorTintColor = [UIColor whiteColor];
        scrollView.pageControl.currentPageIndicatorTintColor = [UIColor orangeColor];
        _adScrollView = scrollView;
        [self addSubview:scrollView];
        
        ButtonsView *btnsView = [[ButtonsView alloc] initWithFrame:CGRectMake(0,CGRectGetMaxY(_adScrollView.frame) + MARGIN , SCREEN_WIDTH, BUTTONS_VIEW_HEIGHT) andRows:2 andColumns:4];
        _buttonsView = btnsView;
        [self addSubview:btnsView];
        
        ScrollTitleView *scrollTextView = [[ScrollTitleView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_buttonsView.frame) + MARGIN, SCREEN_WIDTH, SCROLLTITLE_VIEW_HEIGHT)];
        _scrollTitleView = scrollTextView;
        [self addSubview:scrollTextView];
        
        CollectionView *collectionsView = [[CollectionView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_scrollTitleView.frame) + MARGIN , SCREEN_WIDTH, COLLECTIONS_VIEW_HEIGHT)];
        _collectionsView  = collectionsView;
        [self addSubview:collectionsView];
        
        PromotionView *promotionView = [[PromotionView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_collectionsView.frame) + MARGIN , SCREEN_WIDTH, PROMOTIONS_VIEW_HEIGHT)];
        _promotionView = promotionView;
        [self addSubview:promotionView];
        
        SegementView *segmentView = [[SegementView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_promotionView.frame) + MARGIN, SCREEN_WIDTH, SEGMENT_VIEW_HEIGHT)];
        _segmentView = segmentView;
        [self addSubview:segmentView];
        
//        for (UIView *subView in self.subviews) {
//            subView.layer.borderWidth = 1;
//            subView.layer.borderColor = [[UIColor grayColor] CGColor];
//        }
    }
    return self;
}

+ (UIView *)generateHeaderView{
    return [[self alloc] init];
}

@end
