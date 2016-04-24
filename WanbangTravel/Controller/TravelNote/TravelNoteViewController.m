//
//  TravelNoteViewController.m
//  WanbangTravel
//
//  Created by 沈凡 on 16/4/22.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "TravelNoteViewController.h"

#define UISCREEN_WIDTH [UIScreen mainScreen].bounds.size.width

@interface TravelNoteViewController ()

@end

@implementation TravelNoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *leftBarBtn = [[UIButton alloc] init];
    leftBarBtn.frame = CGRectMake(20, 5, 50, 20);
    leftBarBtn.backgroundColor = [UIColor redColor];
    [leftBarBtn setTitle:@"头像" forState:UIControlStateNormal];
    //[leftBarBtn addTarget:self action:@selector(chooseLocation) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBarBtn];
    
    //UIButton *telephoneBtn = [[UIButton alloc] initWithFrame:CGRectMake(150, 7, 50, 30)];
    UIButton *telephoneBtn = [[UIButton alloc] init];

    [telephoneBtn setTitle:@"+" forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:telephoneBtn];
    
    NavigationSegment *segment = [[NavigationSegment alloc] initWithFrame:CGRectMake(0, 0, UISCREEN_WIDTH, 44)];
    
    self.navigationItem.titleView = segment;
}



@end
