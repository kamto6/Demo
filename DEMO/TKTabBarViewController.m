//
//  TabBarViewController.m
//  DEMO
//
//  Created by 揭康伟 on 2020/11/12.
//  Copyright © 2020 揭康伟. All rights reserved.
//

#import "TabBarViewController.h"
 
@interface TabBarViewController () <UITabBarControllerDelegate>

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.delegate = self;
    [self setupTabbarViewControllers];
}

- (void)setupTabbarViewControllers{
    
    NSMutableArray *controllers = [NSMutableArray array];
    
  
}

@end
