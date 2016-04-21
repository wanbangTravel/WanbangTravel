//
//  HeaderView.m
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/18.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "HeaderView.h"

@implementation HeaderView


+ (UIView *)generateHeaderViewWithFrame:(CGRect)frame{
    CGFloat width = frame.size.width;
    
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, width, 700)];
    
    AdScrollView *scrollView = [[AdScrollView alloc] initWithFrame:CGRectMake(0, 0, width, 150)];
    AdDataModel *dataModel = [AdDataModel adDataModelWithImageNameAndAdTitleArray];
    //如果滚动视图的父视图由导航控制器控制,必须要设置该属性(ps,猜测这是为了正常显示,导航控制器内部设置了UIEdgeInsetsMake(64, 0, 0, 0))
    //scrollView.contentInset = UIEdgeInsetsMake(-64, 0, 0, 0);
    scrollView.imageNameArray = dataModel.imageNameArray;
    [scrollView setAdTitleArray:dataModel.adTitleArray withShowStyle:AdTitleShowStyleLeft];
    scrollView.PageControlShowStyle = UIPageControlShowStyleCenter;
    scrollView.pageControl.pageIndicatorTintColor = [UIColor whiteColor];
    scrollView.pageControl.currentPageIndicatorTintColor = [UIColor orangeColor];
    [headerView addSubview:scrollView];
    
    ButtonsView *btnsView = [[ButtonsView alloc] initWithFrame:CGRectMake(0, 150, width, 200) andRows:2 andColumns:3];
    [headerView addSubview:btnsView];
    
    ScrollTitleView *scrollTextView = [[ScrollTitleView alloc] initWithFrame:CGRectMake(0, 350, width, 100)];
    [headerView addSubview:scrollTextView];
    
    CollectionView *collectionView = [[CollectionView alloc] initWithFrame:CGRectMake(0, 450, width, 200)];
    [headerView addSubview:collectionView];
    
    return headerView;
}

@end
