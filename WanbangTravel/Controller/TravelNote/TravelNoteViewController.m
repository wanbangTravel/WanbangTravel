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

@property (nonatomic ,strong) StrategyViewController *strategyVC;//攻略
@property (nonatomic ,strong) SquareViewController *squareVC;//广场
@property (nonatomic ,strong) UIViewController *currentVC;

@end

@implementation TravelNoteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *leftBarBtn = [[UIButton alloc] initWithFrame:CGRectMake(MARGIN, (44 - ICON_SIZE) / 2, ICON_SIZE, ICON_SIZE)];
    leftBarBtn.backgroundColor = [UIColor redColor];
    [leftBarBtn setTitle:@"头像" forState:UIControlStateNormal];
    leftBarBtn.titleLabel.font = [UIFont systemFontOfSize:10];
    leftBarBtn.layer.cornerRadius = ICON_SIZE / 2;
    //[leftBarBtn addTarget:self action:@selector(chooseLocation) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBarBtn];
    
    UIButton *telephoneBtn = [[UIButton alloc] initWithFrame:CGRectMake(UISCREEN_WIDTH - (MARGIN + ICON_SIZE), (44 - ICON_SIZE) / 2, ICON_SIZE, ICON_SIZE)];
    [telephoneBtn setTitle:@"+" forState:UIControlStateNormal];
    telephoneBtn.backgroundColor = [UIColor redColor];
    //[telephoneBtn addTarget:self action:@selector(chooseLocation) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:telephoneBtn];
    
    NavigationSegment *segment = [[NavigationSegment alloc] initWithFrame:CGRectMake(CGRectGetMaxX(leftBarBtn.frame), 0, UISCREEN_WIDTH - (MARGIN + ICON_SIZE) * 2, 44)];
    segment.leftButton.tag = -1;
    segment.rightButton.tag = 1;
    [segment.leftButton addTarget:self action:@selector(didClickSegmentButton:) forControlEvents:UIControlEventTouchUpInside];
    [segment.rightButton addTarget:self action:@selector(didClickSegmentButton:) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.titleView = segment;
    
    /*
     苹果新的API增加了addChildViewController方法，并且希望我们在使用addSubview时，同时调用[self addChildViewController:child]方法将sub view对应的viewController也加到当前ViewController的管理中。
     对于那些当前暂时不需要显示的subview，只通过addChildViewController把subViewController加进去；需要显示时再调用transitionFromViewController方法。将其添加进入底层的ViewController中。
     这样做的好处：
     
     1.无疑，对页面中的逻辑更加分明了。相应的View对应相应的ViewController。
     2.当某个子View没有显示时，将不会被Load，减少了内存的使用。
     3.当内存紧张时，没有Load的View将被首先释放，优化了程序的内存释放机制。
     */
    
    /**
     *  在iOS5中，ViewController中新添加了下面几个方法：
     *  addChildViewController:
     *  removeFromParentViewController
     *  transitionFromViewController:toViewController:duration:options:animations:completion:
     *  willMoveToParentViewController:
     *  didMoveToParentViewController:
     */
    
    self.strategyVC = [[StrategyViewController alloc] init];
    [self.strategyVC.view setFrame:CGRectMake(0, 104, 320, 464)];
    [self addChildViewController:_strategyVC];
    
    self.squareVC = [[SquareViewController alloc] init];
    [self.squareVC.view setFrame:CGRectMake(0, 104, 320, 464)];
    
    //默认第一个视图
    [self.view addSubview:self.strategyVC.view];
    self.currentVC = self.strategyVC;
}

- (void)didClickSegmentButton:(UIButton *)sender {
    //点击处于当前页面的按钮,直接退出方法
    if(self.currentVC.view.tag == sender.tag) {
        return;
    } else {
        switch(sender.tag) {
            case -1:[self replaceController:self.currentVC withNewController:self.strategyVC];
            case 1:[self replaceController:self.currentVC withNewController:self.squareVC];
        }
    }
}

- (void)replaceController:(UIViewController *)oldVc withNewController:(UIViewController *)newVc {
    /**
     *  着重介绍一下它
     *  transitionFromViewController:toViewController:duration:options:animations:completion:
     *  fromViewController	当前显示在父视图控制器中的子视图控制器
     *  toViewController    将要显示的姿势图控制器
     *  duration			动画持续时间
     *  options				动画效果(渐变,从下往上等等,具体查看API)
     *  animations			转换过程中得动画
     *  completion			转换完成
     */
    [self addChildViewController:newVc];
    [self transitionFromViewController:oldVc toViewController:newVc duration:2.0 options:UIViewAnimationOptionTransitionCrossDissolve animations:nil completion:^(BOOL finished) {
        if (finished) {
            [newVc didMoveToParentViewController:self];
            [oldVc willMoveToParentViewController:nil];
            [oldVc removeFromParentViewController];
            //self.currentVC = newController;
        }else{
            //self.currentVC = oldController;
        }
    }];
}

@end
