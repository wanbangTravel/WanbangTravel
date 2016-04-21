//
//  AlertUtil.m
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/7.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "AlertUtil.h"

@implementation AlertUtil

-(void)showAlertViewWithTitle:(NSString *)title andMsg:(NSString *)msg{
    UIAlertView *defaultView = [[UIAlertView alloc] initWithTitle:title message:msg delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [defaultView show];
}

-(void)showAlertViewWithTitle:(NSString *)title andMsg:(NSString *)msg delegate:(id)delegate otherBtns:(NSString *)titles, ...{
    UIAlertView *defaultView  = [[UIAlertView alloc] initWithTitle:title message:msg delegate:delegate cancelButtonTitle:@"确定" otherButtonTitles:titles, nil];
    [defaultView show];
}

@end
