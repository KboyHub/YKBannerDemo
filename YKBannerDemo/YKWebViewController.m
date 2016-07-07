//
//  YKWebViewController.m
//  YKBannerDemo
//
//  Created by 闫康 on 16/7/7.
//  Copyright © 2016年 yankang. All rights reserved.
//

#import "YKWebViewController.h"

@interface YKWebViewController ()

@property (nonatomic, weak) UIWebView *webView;

@end

@implementation YKWebViewController


- (UIWebView *)webView
{
    if (!_webView) {
        UIWebView *web = [[UIWebView alloc] initWithFrame:self.view.bounds];
        [self.view addSubview:web];
        _webView = web;
    }
    return _webView;
}

- (instancetype)initWithUrlStr:(NSString *)url
{
    if (self = [self init]) {
        [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:url]]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}


@end
