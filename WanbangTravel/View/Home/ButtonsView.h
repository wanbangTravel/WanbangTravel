//
//  ButtonsView.h
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/15.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CommonMacroDefinition.pch"

#define ATOMVIEW_WIDTH 50
#define ATOMVIEW_HEIGHT 70
#define HEIGHT_WIDTH_MARGINSCALE 0.1

@interface ButtonsView : UIView

@property (nonatomic, assign) int rowsCount;
@property (nonatomic, assign) int columnsCount;
@property (nonatomic, strong) NSArray<NSString *> *imgNameList;
@property (nonatomic, strong) NSArray<UIColor *> *btnBackgroundColor;

- (instancetype)initWithFrame:(CGRect)frame andRows:(int)row andColumns:(int)col;
@end
