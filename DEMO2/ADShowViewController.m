//
//  ADShowViewController.m
//  DEMO
//
//  Created by 揭康伟 on 2020/11/12.
//  Copyright © 2020 揭康伟. All rights reserved.
//

#import "ADShowViewController.h"
#import "TKTabBarViewController.h"

@interface ADShowViewController ()
@property (nonatomic, strong) UIImageView *adImageView;
@end

@implementation ADShowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initUI];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        UIStoryboard *mainSb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        TKTabBarViewController *target = [mainSb instantiateViewControllerWithIdentifier:@"TKTabBarViewController"];
        target.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:target animated:YES completion:nil];
    });
}

- (void)initUI
{
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.adImageView];
    [self.adImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}


- (UIImageView *)adImageView
{
    if (!_adImageView) {
        _adImageView = [[UIImageView alloc]init];
        _adImageView.image = [UIImage imageNamed:@"WechatIMG31"];
    }
    return _adImageView;
}

@end
