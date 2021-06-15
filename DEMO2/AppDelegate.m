//
//  AppDelegate.m
//  DEMO
//
//  Created by 揭康伟 on 2020/11/12.
//  Copyright © 2020 揭康伟. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    [NSThread sleepForTimeInterval:1];
//    [MobSDK uploadPrivacyPermissionStatus:YES onResult:^(BOOL success) {
//
//    }];
//    [ShareSDK registPlatforms:^(SSDKRegister *platformsRegister) {
//       //QQ
//       [platformsRegister setupQQWithAppId:@"100371282" appkey:@"aed9b0303e3ed1e27bae87c33761161d" enableUniversalLink:YES universalLink:@"https://ybpre.share2dlink.com/"];
//
//
//       //更新到4.3.3或者以上版本，微信初始化需要使用以下初始化
//       [platformsRegister setupWeChatWithAppId:@"wx617c77c82218ea2c" appSecret:@"c7253e5289986cf4c4c74d1ccc185fb1" universalLink:@"https://ybpre.share2dlink.com/"];
//
//       //新浪
//        [platformsRegister setupSinaWeiboWithAppkey:@"" appSecret:@"" redirectUrl:@"http://www.sharesdk.cn" universalLink:@""];
//
//    }];
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
