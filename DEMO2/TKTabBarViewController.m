//
//  TKTabBarViewController.m
//  DEMO
//
//  Created by 揭康伟 on 2020/11/12.
//  Copyright © 2020 揭康伟. All rights reserved.
//

#import "TKTabBarViewController.h"
#import "HomeViewController.h"
#import "FindViewController.h"
#import "MineViewController.h"
 
@interface TKTabBarViewController () <UITabBarControllerDelegate>

@end

@implementation TKTabBarViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
    [self setupTabbarViewControllers];
    self.tabBar.tintColor = TKRGBHex(0xFF7C72);
}

- (void)setupTabbarViewControllers{
    
    NSMutableArray *controllers = [NSMutableArray array];
    
    UIStoryboard *mainSb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    
    UIViewController *homeVc = [mainSb instantiateViewControllerWithIdentifier:@"HomeViewController"];
    UINavigationController *homeNac = [[UINavigationController alloc]initWithRootViewController:homeVc];
    UITabBarItem *homeItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"tabBar_home"] selectedImage:[UIImage imageNamed:@"tabBar_home_sl"]];
    [homeItem setTitleTextAttributes:@{NSForegroundColorAttributeName:TKRGBHex(0xFF7C72),NSFontAttributeName : [UIFont systemFontOfSize:10.0]} forState:UIControlStateSelected];
    homeItem.imageInsets = UIEdgeInsetsMake(-1, 0, 1, 0);
    [homeItem setTitlePositionAdjustment:UIOffsetMake(0, -3.5)];
    homeVc.tabBarItem = homeItem;
    
    UIViewController *findVc = [mainSb instantiateViewControllerWithIdentifier:@"FindViewController"];
    UINavigationController *findNac = [[UINavigationController alloc]initWithRootViewController:findVc];
    UITabBarItem *findItem = [[UITabBarItem alloc] initWithTitle:@"还原" image:[UIImage imageNamed:@"tabBar_find"] selectedImage:[UIImage imageNamed:@"tabBar_find_sl"]];
    [findItem setTitleTextAttributes:@{NSForegroundColorAttributeName:TKRGBHex(0xFF7C72),NSFontAttributeName : [UIFont systemFontOfSize:10.0]} forState:UIControlStateSelected];
    findItem.imageInsets = UIEdgeInsetsMake(-1, 0, 1, 0);
    [findItem setTitlePositionAdjustment:UIOffsetMake(0, -3.5)];
    findVc.tabBarItem = findItem;
    
    UIViewController *mineVc = [mainSb instantiateViewControllerWithIdentifier:@"MineViewController"];
    UINavigationController *mineNac = [[UINavigationController alloc]initWithRootViewController:mineVc];
    UITabBarItem *mineItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"tabBar_home"] selectedImage:[UIImage imageNamed:@"tabBar_home_sl"]];
    [mineItem setTitleTextAttributes:@{NSForegroundColorAttributeName:TKRGBHex(0xFF7C72),NSFontAttributeName : [UIFont systemFontOfSize:10.0]} forState:UIControlStateSelected];
    mineItem.imageInsets = UIEdgeInsetsMake(-1, 0, 1, 0);
    [mineItem setTitlePositionAdjustment:UIOffsetMake(0, -3.5)];
    mineVc.tabBarItem = mineItem;
    
    [controllers addObject:homeNac];
    [controllers addObject:findNac];
    [controllers addObject:mineNac];
    
    self.viewControllers = controllers;
}

@end
