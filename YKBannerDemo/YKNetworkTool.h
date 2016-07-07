//
//  YKNetworkTool.h
//  YKBannerDemo
//
//  Created by 闫康 on 16/7/7.
//  Copyright © 2016年 yankang. All rights reserved.
//

#import "AFHTTPSessionManager.h"

typedef NS_ENUM(NSUInteger,NetworkStates) {
    NetworkStatesNone, // 没有网络
    NetworkStates2G,   // 2G
    NetworkStates3G,   // 3G
    NetworkStates4G,   // 4G
    NetworkStatesWIFI  // WIFI
};


@interface YKNetworkTool : AFHTTPSessionManager

+ (instancetype)shareTool;

// 判断网络类型
+ (NetworkStates)getNetworkStates;

@end
