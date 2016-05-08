//
//  TravelNoteViewController.m
//  WanbangTravel
//
//  Created by 沈凡 on 16/4/22.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "TravelNoteViewController.h"

#define UISCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define MARGIN 20
#define ICON_SIZE 30

@interface TravelNoteViewController ()

@end

@implementation TravelNoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *leftBarBtn = [[UIButton alloc] initWithFrame:CGRectMake(MARGIN, (44 - ICON_SIZE) / 2, ICON_SIZE, ICON_SIZE)];
    leftBarBtn.backgroundColor = [UIColor redColor];
    [leftBarBtn setTitle:@"头像" forState:UIControlStateNormal];
    leftBarBtn.titleLabel.font = [UIFont systemFontOfSize:10];
    leftBarBtn.layer.cornerRadius = 15;
    //[leftBarBtn addTarget:self action:@selector(chooseLocation) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBarBtn];
    
    UIButton *telephoneBtn = [[UIButton alloc] initWithFrame:CGRectMake(UISCREEN_WIDTH - (MARGIN + ICON_SIZE), (44 - ICON_SIZE) / 2, ICON_SIZE, ICON_SIZE)];
    [telephoneBtn setTitle:@"+" forState:UIControlStateNormal];
    telephoneBtn.backgroundColor = [UIColor redColor];
    //[telephoneBtn addTarget:self action:@selector(chooseLocation) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:telephoneBtn];
    
    NavigationSegment *segment = [[NavigationSegment alloc] initWithFrame:CGRectMake(CGRectGetMaxX(leftBarBtn.frame), 0, UISCREEN_WIDTH - (MARGIN + ICON_SIZE) * 2, 44)];
    self.navigationItem.titleView = segment;
}



@end
