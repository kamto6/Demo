//
//  SingleInstance.m
//  DEMO
//
//  Created by 揭康伟 on 2020/11/13.
//  Copyright © 2020 揭康伟. All rights reserved.
//

#import "SingleInstance.h"

@implementation SingleInstance

+ (instancetype)sharedInstance
{
    static SingleInstance *_instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[SingleInstance alloc]init];
    });
    return _instance;
}
@end
