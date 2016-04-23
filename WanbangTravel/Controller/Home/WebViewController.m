//
//  WebViewController.m
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/18.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "WebViewController.h"

#define UISCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define UISCREENHEIGHT self.view.bounds.size.height

@interface WebViewController ()<UIWebViewDelegate>

@property (nonatomic, strong) UIWebView *webView;
@property (nonatomic, strong) UIView *bottomNaviView;

@end

@implementation WebViewController

- (instancetype)init{
    if (self = [super init]) {
        [self setHidesBottomBarWhenPushed:YES];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self setHidesBottomBarWhenPushed:YES];
    //self.tabBarController.tabBar.hidden = YES;
    //初始化，self.view是父控件
    UIWebView *tempWebView = [[UIWebView alloc] init];
    tempWebView.frame = CGRectMake(0, 0, UISCREENWIDTH, UISCREENHEIGHT - 40);
    tempWebView.delegate = self;
    tempWebView.scrollView.bounces = NO;
    tempWebView.scrollView.showsHorizontalScrollIndicator = NO;
    tempWebView.scalesPageToFit = YES;//自动对页面进行缩放以适应屏幕
    tempWebView.opaque = NO;
    tempWebView.backgroundColor = [UIColor whiteColor];
    _webView = tempWebView;
    [self.view addSubview:_webView];
    
    UIView *bottomNaviBar = [[UIView alloc] initWithFrame:CGRectMake(0, UISCREENHEIGHT - 40, UISCREENWIDTH, 40)];
    [bottomNaviBar setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(20, 0, 40, 40)];
    [backBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [backBtn setTitle:@"后退" forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(webGoBack) forControlEvents:UIControlEventTouchUpInside];
    [bottomNaviBar addSubview:backBtn];
    
    UIButton *forwardBtn = [[UIButton alloc] initWithFrame:CGRectMake(80, 0, 40, 40)];
    [forwardBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [forwardBtn setTitle:@"前进" forState:UIControlStateNormal];
    [forwardBtn addTarget:self action:@selector(webForward) forControlEvents:UIControlEventTouchUpInside];
    [bottomNaviBar addSubview:forwardBtn];
    
    _bottomNaviView = bottomNaviBar;
    [self.view addSubview:_bottomNaviView];
    
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.url]]];
}

#pragma mark - UIWebView delegate methods

//- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
//
//}
- (void)webGoBack{
    [self.webView goBack];
}

- (void)webForward{
    [self.webView goForward];
}
- (void)webViewDidStartLoad:(UIWebView *)webView{
    //NSLog(@"start load data");
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error{
    NSLog(@"failed with error %@",error.userInfo);
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    //NSLog(@"load data finished");
}

@end
