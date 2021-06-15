//
//  PhotoViewController.m
//  DEMO
//
//  Created by 揭康伟 on 2020/11/13.
//  Copyright © 2020 揭康伟. All rights reserved.
//

#import "PhotoViewController.h"

@interface PhotoViewController ()
@property (nonatomic, strong) UIImageView  *photoImageView;
@end

@implementation PhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initUI];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self loadImage];
}
- (void)loadImage
{
    [self barDeterminate];
    self.photoImageView.image = self.image;
    
    dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    dispatch_async(queue, ^{
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            self.photoImageView.hidden = NO;
            [MBProgressHUD HUDForView:self.view].progress = 1.0f;
        });
    });
    
}


- (void)barDeterminate {
    
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];

    // Set the bar determinate mode to show task progress.
    hud.mode = MBProgressHUDModeDeterminateHorizontalBar;
    hud.label.text = @"还原中...";

    dispatch_async(dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0), ^{
        // Do something useful in the background and update the HUD periodically.
        [self doSomeWorkWithProgress];
        dispatch_async(dispatch_get_main_queue(), ^{
            [hud hideAnimated:YES];
        });
    });
}

- (void)doSomeWorkWithProgress {
    // This just increases the progress indicator in a loop.
    float progress = 0.0f;
    while (progress < 1.0f) {
        progress += 0.01f;
        dispatch_async(dispatch_get_main_queue(), ^{
            // Instead we could have also passed a reference to the HUD
            // to the HUD to myProgressTask as a method parameter.
            [MBProgressHUD HUDForView:self.view].progress = progress;
        });
        usleep(20000);
    }
}

- (void)initUI
{
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.photoImageView];

    [self.photoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(KFitScale(100));
        make.left.equalTo(self.view).offset(KFitScale(24));
        make.right.equalTo(self.view).offset(KFitScale(-24));
        make.bottom.equalTo(self.view).offset(KFitScale(-200));
    }];
    self.photoImageView.hidden = YES;
    
    UIButton *backBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 40, 20)];
    [backBtn setImage:[UIImage imageNamed:@"zuo"] forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(onClickBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
    self.navigationItem.leftBarButtonItem  = backItem;
    
}

- (void)onClickBack:(UIButton *)sender
{
    self.tabBarController.selectedIndex = 0;
    [self.navigationController popToRootViewControllerAnimated:YES];
    
}

- (UIImageView *)photoImageView
{
    if (!_photoImageView) {
        _photoImageView = [[UIImageView alloc]init];
    }
    return _photoImageView;
}

@end
