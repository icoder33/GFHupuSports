//
//  GFNewsDetailViewController.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/7.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFNewsDetailViewController.h"

@interface GFNewsDetailViewController ()<UIWebViewDelegate>{
    
    UIActivityIndicatorView *_activityIndicatorView;
}

@end

@implementation GFNewsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpWebView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUpWebView{
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    webView.delegate = self;
    _activityIndicatorView = [[UIActivityIndicatorView alloc]
                              initWithFrame : CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)] ;
    [_activityIndicatorView setCenter: self.view.center] ;
    [_activityIndicatorView setActivityIndicatorViewStyle: UIActivityIndicatorViewStyleWhite] ;
    [self.view addSubview : _activityIndicatorView] ;
    
    NSURL *url =[NSURL URLWithString:@"http://m.hupu.com/nba/news/1970074.html"];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [self.view addSubview:webView];
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [_activityIndicatorView startAnimating] ;
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [_activityIndicatorView stopAnimating];
}


@end
