//
//  WebViewController.m
//  WanBangTravel
//
//  Created by 沈凡 on 16/4/18.
//  Copyright © 2016年 mmt&sf. All rights reserved.
//

#import "WebViewController.h"

#define UISCREENWIDTH [UIScreen mainScreen].bounds.size.width
#define UISCREENHEIGHT [UIScreen mainScreen].bounds.size.height

@interface WebViewController ()<UIWebViewDelegate>

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation WebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.webView.frame = CGRectMake(0, 0, UISCREENWIDTH, UISCREENHEIGHT);
    NSLog(@"%@",self.url);
    self.webView.delegate = self;
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.url]]];
}

#pragma mark - UIWebView delegate methods

//- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType{
//    
//}

- (void)webViewDidStartLoad:(UIWebView *)webView{
    NSLog(@"start load data");
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"load data finished");
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error{
    NSLog(@"failed with error %@",error.userInfo);
}


#pragma mark - Navigation
//
//- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    NSLog(@"%@",[sender class]);
//}



@end
