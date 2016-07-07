//
//  ViewController.m
//  YKBannerDemo
//
//  Created by 闫康 on 16/7/7.
//  Copyright © 2016年 yankang. All rights reserved.
//

#import "ViewController.h"
#import "YKNetworkTool.h"
#import "YKBannerView.h"
#import "YKWebViewController.h"

@interface ViewController ()

@property (nonatomic,strong)NSArray *banners;
@property (nonatomic,strong)NSArray *bannersDetail;
@property (nonatomic,strong)YKBannerView *bannerView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _banners = [NSArray arrayWithObjects:@"http://shianyun-oss.oss-cn-beijing.aliyuncs.com/uploads/AppBanner/dpbanner2.2-1.png",@"http://shianyun-oss.oss-cn-beijing.aliyuncs.com/uploads/AppBanner/dpbanner2.2-2.png",@"http://shianyun-oss.oss-cn-beijing.aliyuncs.com/uploads/AppBanner/dpbanner2.2-3.png",nil];
   
    _bannersDetail = [NSArray arrayWithObjects:@"http://liveapi.9158.com/Active/20160628/index.html",@"",@"http://liveapi.9158.com/Active/20160621/index.html",nil];
    
    YKBannerView *bannerView = [[YKBannerView alloc]initWithImageArray:_banners imageClickBlock:^(NSInteger index) {
        if (![_bannersDetail[index] isEqualToString:@""]) {
            YKWebViewController *bannerVC = [[YKWebViewController alloc]initWithUrlStr:_bannersDetail[index]];
            [self presentViewController:bannerVC animated:YES completion:nil];
        }
    }];
    bannerView.time = 2.0;
    bannerView.backgroundColor = [UIColor redColor];
//    [bannerView setPageImage:[UIImage imageNamed:@"non_selected"] andCurrentPageImage:[UIImage imageNamed:@"selected"]];
    self.bannerView = bannerView;
    [self.view addSubview:self.bannerView];
}

- (void)viewWillLayoutSubviews{
    self.bannerView.frame = CGRectMake(0, 50, self.view.bounds.size.width, 200);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
