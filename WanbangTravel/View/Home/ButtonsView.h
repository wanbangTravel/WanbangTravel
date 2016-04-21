//
//  ButtonsView.h
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/15.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ButtonsView : UIView

@property (assign,nonatomic) int rowsCount;
@property (assign,nonatomic) int columnsCount;
- (instancetype)initWithFrame:(CGRect)frame andRows:(int)row andColumns:(int)col;
@end
