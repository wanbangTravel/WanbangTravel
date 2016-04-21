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

@interface HeaderView : UIView

//整合所有子视图成一个视图，返回给viewcontroller
+ (UIView *)generateHeaderViewWithFrame:(CGRect)frame;

@end
