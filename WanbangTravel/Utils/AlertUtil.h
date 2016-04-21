//
//  AlertUtil.h
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/7.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface AlertUtil : NSObject

/**
 *简单消息提示框
 */
-(void)showAlertViewWithTitle:(nullable NSString *)title andMsg:(nullable NSString *)msg;

/**
 *带有代理的消息提示框(传递代理对象处理按钮点击事件)
 */
-(void)showAlertViewWithTitle:(nullable NSString *)title andMsg:(nullable NSString *)msg delegate:(nullable id) delegate otherBtns:(nullable NSString *)titles,...;

@end
