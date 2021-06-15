//
//  WeiXinViewController.m
//  DEMO
//
//  Created by 揭康伟 on 2020/11/13.
//  Copyright © 2020 揭康伟. All rights reserved.
//

#import "WeiXinViewController.h"

@interface WeiXinViewController ()

@property (nonatomic, strong) UIButton     *closeBtn;
@property (nonatomic, strong) UIImageView  *appIcon;
@property (nonatomic, strong) UILabel      *appDescLab;
@property (nonatomic, strong) UILabel      *titleLab;
@property (nonatomic, strong) UILabel      *subTitleLab;

@property (nonatomic, strong) UIImageView *userIcon;
@property (nonatomic, strong) UILabel     *userNameLab;
@property (nonatomic, strong) UILabel     *userDescLab;
@property (nonatomic, strong) UIView      *bottomLine;

@property (nonatomic, strong) UIImageView *JiahaoIcon;
@property (nonatomic, strong) UILabel     *nameTitleLab;
@property (nonatomic, strong) UIImageView *duiIcon;
@property (nonatomic, strong) UIImageView *youIcon;
@property (nonatomic, strong) UIView      *bottomLine2;

@property (nonatomic, strong) UIButton *acceptBtn;
@property (nonatomic, strong) UIButton *refuceBtn;

@end

@implementation WeiXinViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initUI];
}

- (void)initUI
{
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.closeBtn];
    [self.view addSubview:self.appIcon];
    [self.view addSubview:self.appDescLab];
    [self.view addSubview:self.titleLab];
    [self.view addSubview:self.subTitleLab];
    
    [self.view addSubview:self.userIcon];
    [self.view addSubview:self.userNameLab];
    [self.view addSubview:self.userDescLab];
    
    [self.view addSubview:self.bottomLine];
    [self.view addSubview:self.duiIcon];
    [self.view addSubview:self.JiahaoIcon];
    [self.view addSubview:self.nameTitleLab];
    [self.view addSubview:self.youIcon];
    [self.view addSubview:self.bottomLine2];
    
    [self.view addSubview:self.acceptBtn];
    [self.view addSubview:self.refuceBtn];
    
    [self.closeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(16));
        make.width.mas_equalTo(KFitScale(40));
        make.height.mas_equalTo(KFitScale(40));
        make.top.equalTo(self.view).offset(KFitScale(50));
    }];
    
    [self.appIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(18));
        make.width.mas_equalTo(KFitScale(20));
        make.height.mas_equalTo(KFitScale(20));
        make.top.equalTo(self.view).offset(KFitScale(120));
    }];
    
    [self.appDescLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.appIcon.mas_right).offset(KFitScale(8));
        make.centerY.equalTo(self.appIcon);
    }];
    
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.appIcon.mas_bottom).offset(KFitScale(60));
        make.left.equalTo(self.view).offset(KFitScale(18));
        make.right.equalTo(self.view).offset(-KFitScale(20));
    }];
    
    [self.subTitleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLab.mas_bottom).offset(KFitScale(50));
        make.left.equalTo(self.view).offset(KFitScale(18));
    }];
    
    [self.userIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(18));
        make.width.mas_equalTo(KFitScale(40));
        make.height.mas_equalTo(KFitScale(40));
        make.top.equalTo(self.subTitleLab.mas_bottom).offset(KFitScale(40));
    }];
    
    [self.userNameLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.userIcon.mas_right).offset(KFitScale(8));
        make.top.equalTo(self.userIcon.mas_top).offset(KFitScale(2));
    }];
    [self.userDescLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.userNameLab.mas_bottom).offset(KFitScale(4));
        make.left.equalTo(self.userIcon.mas_right).offset(KFitScale(8));
    }];
    
    [self.bottomLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(18));
        make.right.equalTo(self.view).offset(KFitScale(-18));
        make.top.equalTo(self.userIcon.mas_bottom).offset(KFitScale(8));
        make.height.mas_equalTo(KFitScale(0.5));
    }];
    
    [self.duiIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).offset(KFitScale(-23));
        make.centerY.equalTo(self.userIcon);
        make.width.mas_equalTo(KFitScale(16));
        make.height.mas_equalTo(KFitScale(16));
    }];
    [self.JiahaoIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.bottomLine.mas_bottom).offset(KFitScale(20));
        make.centerX.equalTo(self.userIcon);
        make.width.mas_equalTo(KFitScale(20));
        make.height.mas_equalTo(KFitScale(20));
    }];
    
    [self.nameTitleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.JiahaoIcon);
        make.left.equalTo(self.JiahaoIcon.mas_right).offset(KFitScale(20));
    }];
    
    [self.youIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).offset(KFitScale(-22));
        make.centerY.equalTo(self.JiahaoIcon);
        make.width.mas_equalTo(KFitScale(20));
        make.height.mas_equalTo(KFitScale(20));
    }];
    
    [self.bottomLine2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(18));
        make.right.equalTo(self.view).offset(KFitScale(-18));
        make.top.equalTo(self.JiahaoIcon.mas_bottom).offset(KFitScale(20));
        make.height.mas_equalTo(KFitScale(0.5));
    }];
 
    [self.acceptBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(KFitScale(220));
        make.height.mas_equalTo(KFitScale(40));
        make.top.equalTo(self.bottomLine2.mas_bottom).offset(KFitScale(60));
    }];
    
    [self.refuceBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.width.mas_equalTo(KFitScale(220));
        make.height.mas_equalTo(KFitScale(40));
        make.top.equalTo(self.acceptBtn.mas_bottom).offset(KFitScale(10));
    }];
}

- (void)onClickClose:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)onClickAccept:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
    if (self.thirdPartloginBlock) {
        self.thirdPartloginBlock();
    }
}

- (void)onClickRefuce:(UIButton *)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (UIButton *)closeBtn
{
    if (!_closeBtn) {
        _closeBtn = [[UIButton alloc]init];
        [_closeBtn setTitle:@"关闭" forState:UIControlStateNormal];
        [_closeBtn setTitleColor:TKRGBHex(0x333333) forState:UIControlStateNormal];
        _closeBtn.titleLabel.font = [UIFont boldSystemFontOfSize:16];
        [_closeBtn addTarget:self action:@selector(onClickClose:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _closeBtn;
}

- (UIImageView *)appIcon
{
    if (!_appIcon) {
        _appIcon = [[UIImageView alloc]init];
        _appIcon.image = [UIImage imageNamed:@"WeChat_icon"];
    }
    return _appIcon;
}

- (UILabel *)appDescLab
{
    if (!_appDescLab) {
        _appDescLab = [[UILabel alloc]init];
        _appDescLab.text = @"lichy    申请使用";
        _appDescLab.font = [UIFont boldSystemFontOfSize:15];
        _appDescLab.textColor = TKRGBHex(0x000000);
    }
    return _appDescLab;
}

- (UILabel *)titleLab
{
    if (!_titleLab) {
        _titleLab = [[UILabel alloc]init];
        _titleLab.text = @"你的微信头像、昵称、地区和性别信息";
        _titleLab.font = [UIFont boldSystemFontOfSize:24];
        _titleLab.numberOfLines = 0;
        _titleLab.textColor = TKRGBHex(0x000000);
    }
    return _titleLab;
}
- (UILabel *)subTitleLab
{
    if (!_subTitleLab) {
        _subTitleLab = [[UILabel alloc]init];
        _subTitleLab.text = @"你可选择使用不同的个人信息登录";
        _subTitleLab.font = [UIFont boldSystemFontOfSize:12];
        _subTitleLab.textColor = TKRGBHex(0xCCCCCC);
    }
    return _subTitleLab;
}

- (UIImageView *)userIcon
{
    if (!_userIcon) {
        _userIcon = [[UIImageView alloc]init];
        _userIcon.image = [UIImage imageNamed:@"Wechat_head.png"];
        _userIcon.layer.masksToBounds = YES;
        _userIcon.layer.cornerRadius = KFitScale(6);
    }
   return  _userIcon;
}

-  (UILabel *)userNameLab
{
    if (!_userNameLab) {
        _userNameLab = [[UILabel alloc]init];
        _userNameLab.text = @"lyn";
        _userNameLab.font = [UIFont boldSystemFontOfSize:16];
        _userNameLab.textColor = TKRGBHex(0x333333);
    }
    return _userNameLab;
}

- (UILabel *)userDescLab
{
    if (!_userDescLab) {
        _userDescLab = [[UILabel alloc]init];
        _userDescLab.text = @"微信个人信息";
        _userDescLab.font = [UIFont boldSystemFontOfSize:12];
        _userDescLab.textColor = TKRGBHex(0xCCCCCC);
    }
    return _userDescLab;
}

- (UIView *)bottomLine
{
    if (!_bottomLine) {
        _bottomLine = [[UIView alloc]init];
        _bottomLine.backgroundColor = TKRGBHex(0xF1F3F7);
    }
    return _bottomLine;
}

- (UIImageView *)JiahaoIcon
{
    if (!_JiahaoIcon) {
        _JiahaoIcon = [[UIImageView alloc]init];
        _JiahaoIcon.image = [UIImage imageNamed:@"jiahao"];
    }
    return _JiahaoIcon;
}

- (UIImageView *)duiIcon
{
    if (!_duiIcon) {
        _duiIcon = [[UIImageView alloc]init];
        _duiIcon.image = [UIImage imageNamed:@"dui"];
    }
    return _duiIcon;
}

- (UIImageView *)youIcon
{
    if (!_youIcon) {
        _youIcon = [[UIImageView alloc]init];
        _youIcon.image = [UIImage imageNamed:@"you"];
    }
    return _youIcon;
}

- (UIView *)bottomLine2
{
    if (!_bottomLine2) {
        _bottomLine2 = [[UIView alloc]init];
        _bottomLine2.backgroundColor = TKRGBHex(0xF1F3F7);
    }
    return _bottomLine2;
}
- (UILabel *)nameTitleLab
{
    if (!_nameTitleLab) {
        _nameTitleLab = [[UILabel alloc]init];
        _nameTitleLab.text = @"新建头像昵称";
        _nameTitleLab.font = [UIFont boldSystemFontOfSize:16];
        _nameTitleLab.textColor = TKRGBHex(0x333333);
    }
    return _nameTitleLab;
}

- (UIButton *)acceptBtn
{
    if (!_acceptBtn) {
        _acceptBtn = [[UIButton alloc]init];
        [_acceptBtn setTitle:@"同意" forState:UIControlStateNormal];
        [_acceptBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _acceptBtn.titleLabel.font = [UIFont systemFontOfSize:18];
        _acceptBtn.backgroundColor = TKRGBHex(0x57bd6a);
        _acceptBtn.layer.masksToBounds = YES;
        _acceptBtn.layer.cornerRadius = KFitScale(6);
        [_acceptBtn addTarget:self action:@selector(onClickAccept:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _acceptBtn;
}
- (UIButton *)refuceBtn
{
    if (!_refuceBtn) {
        _refuceBtn = [[UIButton alloc]init];
        [_refuceBtn setTitle:@"拒绝" forState:UIControlStateNormal];
        [_refuceBtn setTitleColor:TKRGBHex(0x57bd6a) forState:UIControlStateNormal];
        _refuceBtn.titleLabel.font = [UIFont systemFontOfSize:18];
        _refuceBtn.backgroundColor = TKRGBHex(0xE6E6E6);
        _refuceBtn.layer.masksToBounds = YES;
        _refuceBtn.layer.cornerRadius = KFitScale(6);
        [_refuceBtn addTarget:self action:@selector(onClickRefuce:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _refuceBtn;
}
@end
