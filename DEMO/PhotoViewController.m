//
//  PhoneViewController.m
//  DEMO
//
//  Created by 揭康伟 on 2020/11/13.
//  Copyright © 2020 揭康伟. All rights reserved.
//

#import "PhoneViewController.h"

@interface PhoneViewController ()
@property (nonatomic, strong) UIImageView  *photoImageView;
@end

@implementation PhoneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)initUI
{
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.photoImageView];
    
    [self.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(KFitScale(100));
        make.left.equalTo(self.view).offset(KFitScale(24));
        make.right.equalTo(self.view).offset(KFitScale(-24));
        make.bottom.equalTo(self.view).offset(KFitScale(-200));
    }];
}

- (UIImageView *)photoImageView
{
    if (!_photoImageView) {
        _photoImageView = [[UIImageView alloc]init];
    }
    return _photoImageView;
}

@end
