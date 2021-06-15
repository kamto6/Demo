//
//  LoginViewController.m
//  DEMO
//
//  Created by 揭康伟 on 2020/11/12.
//  Copyright © 2020 揭康伟. All rights reserved.
//

#import "LoginViewController.h"
#import "ADShowViewController.h"
#import "WeiXinViewController.h"

@interface LoginViewController ()<UITextFieldDelegate>

@property (nonatomic, strong) UILabel     *titleLab;
@property (nonatomic, strong) UILabel     *bigtitleLab;

@property (nonatomic, strong) UITextField *accountTF;
@property (nonatomic, strong) UITextField *pwdAccountTF;

@property (nonatomic, strong) UIView      *bottomLine1;
@property (nonatomic, strong) UIView      *bottomLine2;

@property (nonatomic, strong) UIButton    *loginButton;
@property (nonatomic, strong) UIButton    *codeBtn;
@property (nonatomic, strong) UIButton    *forgetBtn;

@property (nonatomic, strong) UILabel     *thirdPartLab;
@property (nonatomic, strong) UIView      *thirdPartLine;
@property (nonatomic, strong) UIButton    *weixinBtn;
@property (nonatomic, strong) UILabel     *weixinLab;
@property (nonatomic, strong) UIButton    *qqBtn;
@property (nonatomic, strong) UILabel     *qqLab;
@property (nonatomic, strong) UIButton    *weiboBtn;
@property (nonatomic, strong) UILabel     *weiboLab;

@property (nonatomic, strong) UIImageView *image1;
@property (nonatomic, strong) UILabel     *lab1;
@property (nonatomic, strong) UILabel     *lab2;

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initUI];
}
#pragma mark - life style
- (void)initUI
{
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.titleLab];
    [self.view addSubview:self.bigtitleLab];
    [self.view addSubview:self.accountTF];
    [self.view addSubview:self.bottomLine1];
    [self.view addSubview:self.pwdAccountTF];
    [self.view addSubview:self.bottomLine2];
    [self.view addSubview:self.loginButton];
    [self.view addSubview:self.codeBtn];
    [self.view addSubview:self.forgetBtn];
    
    [self.view addSubview:self.thirdPartLine];
    [self.view addSubview:self.thirdPartLab];
    [self.view addSubview:self.weixinBtn];
    [self.view addSubview:self.weixinLab];
    [self.view addSubview:self.qqBtn];
    [self.view addSubview:self.qqLab];
    [self.view addSubview:self.weiboBtn];
    [self.view addSubview:self.weiboLab];
    
    [self.view addSubview:self.image1];
    [self.view addSubview:self.lab1];
    [self.view addSubview:self.lab2];
    
    [self.titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(KFitScale(52));
    }];
    [self.bigtitleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(36));
        make.top.equalTo(self.view).offset(KFitScale(137));
    }];
    [self.accountTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(36));
        make.right.equalTo(self.view).offset(KFitScale(-36));
        make.height.mas_equalTo(KFitScale(48));
        make.top.equalTo(self.view).offset(KFitScale(202));
    }];
    [self.pwdAccountTF mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(36));
        make.right.equalTo(self.view).offset(KFitScale(-36));
        make.height.mas_equalTo(KFitScale(48));
        make.top.equalTo(self.view).offset(KFitScale(267));
    }];
    [self.bottomLine1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(36));
        make.right.equalTo(self.view).offset(KFitScale(-36));
        make.height.mas_equalTo(KFitScale(1));
        make.top.equalTo(self.accountTF.mas_bottom);
    }];
    [self.bottomLine2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(36));
        make.right.equalTo(self.view).offset(KFitScale(-36));
        make.height.mas_equalTo(KFitScale(1));
        make.top.equalTo(self.pwdAccountTF.mas_bottom);
    }];
    
    [self.loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(36));
        make.right.equalTo(self.view).offset(KFitScale(-36));
        make.height.mas_equalTo(KFitScale(40));
        make.top.equalTo(self.view).offset(KFitScale(365));
    }];
    [self.codeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(36));
        make.top.equalTo(self.loginButton.mas_bottom).offset(KFitScale(4));
    }];
    [self.forgetBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).offset(KFitScale(-36));
        make.top.equalTo(self.loginButton.mas_bottom).offset(KFitScale(4));
    }];
    
    [self.thirdPartLine mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(67));
        make.right.equalTo(self.view).offset(KFitScale(-67));
        make.height.mas_equalTo(KFitScale(1));
        make.bottom.equalTo(self.view).offset(KFitScale(-150));
    }];
    
    [self.thirdPartLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(KFitScale(80));
        make.centerX.equalTo(self.view);
        make.centerY.equalTo(self.thirdPartLine);
        make.height.mas_equalTo(KFitScale(17));
    }];
    
    [self.qqBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(KFitScale(-86));
        make.width.mas_equalTo(KFitScale(44));
        make.height.mas_equalTo(KFitScale(44));
    }];
    [self.qqLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.qqBtn);
        make.bottom.equalTo(self.view).offset(KFitScale(-64));
        make.height.mas_equalTo(KFitScale(17));
    }];
    
    [self.weixinBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.qqBtn.mas_left).offset(-KFitScale(17));
        make.bottom.equalTo(self.view).offset(KFitScale(-86));
        make.width.mas_equalTo(KFitScale(44));
        make.height.mas_equalTo(KFitScale(44));
    }];
    [self.weixinLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.weixinBtn);
        make.bottom.equalTo(self.view).offset(KFitScale(-64));
        make.height.mas_equalTo(KFitScale(17));
    }];
    [self.weiboBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.qqBtn.mas_right).offset(KFitScale(17));
        make.bottom.equalTo(self.view).offset(KFitScale(-86));
        make.width.mas_equalTo(KFitScale(44));
        make.height.mas_equalTo(KFitScale(44));
    }];
    [self.weiboLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.weiboBtn);
        make.bottom.equalTo(self.view).offset(KFitScale(-64));
        make.height.mas_equalTo(KFitScale(17));
    }];
    
    [self.image1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(70));
        make.bottom.equalTo(self.view).offset(KFitScale(-24));
        make.width.mas_equalTo(KFitScale(22));
        make.height.mas_equalTo(KFitScale(22));
    }];
    [self.lab1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.image1.mas_right);
        make.centerY.equalTo(self.image1);
    }];
    [self.lab2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.lab1.mas_right);
        make.centerY.equalTo(self.image1);
    }];
    
}
- (void)onClickLogin:(UIButton *)sender
{
    if (_accountTF.text.length == 0) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        hud.mode = MBProgressHUDModeText;
        hud.label.text = @"未输入手机号码/用户名";
        [hud hideAnimated:YES afterDelay:2.0];
        return;
    }
    if (_pwdAccountTF.text.length == 0) {
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        hud.mode = MBProgressHUDModeText;
        hud.label.text = @"未输入密码";
        [hud hideAnimated:YES afterDelay:2.0];
        return;
    }
    
    [self loginSucess:2];
}

- (void)loginSucess:(NSTimeInterval)timeInterval
{
    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(timeInterval * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.view animated:YES];
        UIStoryboard *mainSb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        UIViewController *target = [mainSb instantiateViewControllerWithIdentifier:@"ADShowViewController"];
        target.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:target animated:YES completion:nil];
        
    });
}
- (void)onClickWeixin:(UIButton *)sender
{
    WeiXinViewController *target = [[WeiXinViewController alloc]init];
    target.modalPresentationStyle = UIModalPresentationFullScreen;
    __weak typeof(self) weakSelf = self;
    target.thirdPartloginBlock = ^{
        [weakSelf loginSucess:1];
    };
    [self presentViewController:target animated:YES completion:nil];
}
- (void)onClickqq:(UIButton *)sender
{
//    [ShareSDK getUserInfo:SSDKPlatformTypeQQ
//         onStateChanged:^(SSDKResponseState state, SSDKUser *user, NSError *error)
//    {
//        if (state == SSDKResponseStateSuccess)
//        {
//
//              NSLog(@"uid=%@",user.uid);
//              NSLog(@"%@",user.credential);
//              NSLog(@"token=%@",user.credential.token);
//              NSLog(@"nickname=%@",user.nickname);
//        }
//
//        else
//        {
//              NSLog(@"%@",error);
//        }
//
//    }];
}
- (void)onClickWeibo:(UIButton *)sender
{
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.accountTF resignFirstResponder];
    [self.pwdAccountTF resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

#pragma mark - layz method
- (UILabel *)titleLab
{
    if (!_titleLab) {
        _titleLab = [[UILabel alloc]init];
        _titleLab.text = @"登录";
        _titleLab.font = [UIFont systemFontOfSize:18];
        _titleLab.textColor = TKRGBHex(0x333333);
    }
    return _titleLab;
}

- (UILabel *)bigtitleLab
{
    if (!_bigtitleLab) {
        _bigtitleLab = [[UILabel alloc]init];
        _bigtitleLab.text = @"账号密码登录";
        _bigtitleLab.font = [UIFont boldSystemFontOfSize:22];
        _bigtitleLab.textColor = TKRGBHex(0x333333);
    }
    return _bigtitleLab;
}

- (UITextField *)accountTF
{
    if (!_accountTF) {
        _accountTF = [[UITextField alloc]init];
        NSMutableAttributedString *placeHolder = [[NSMutableAttributedString alloc]initWithString:@"手机号码/用户名"];
        [placeHolder addAttributes:@{NSForegroundColorAttributeName:TKRGBHex(0xcccccc)} range:NSMakeRange(0,placeHolder.length)];
        _accountTF.attributedPlaceholder = placeHolder;
        _accountTF.textColor = TKRGBHex(0x333333);
        _accountTF.font = [UIFont systemFontOfSize:14];
    }
    return _accountTF;
}

- (UITextField *)pwdAccountTF
{
    if (!_pwdAccountTF) {
        _pwdAccountTF = [[UITextField alloc]init];
        NSMutableAttributedString *placeHolder = [[NSMutableAttributedString alloc]initWithString:@"密码"];
        [placeHolder addAttributes:@{NSForegroundColorAttributeName:TKRGBHex(0xcccccc)} range:NSMakeRange(0,placeHolder.length)];
        _pwdAccountTF.attributedPlaceholder = placeHolder;
        _pwdAccountTF.textColor = TKRGBHex(0x333333);
        _pwdAccountTF.font = [UIFont systemFontOfSize:14];
    }
    return _pwdAccountTF;
}

- (UIView *)bottomLine1
{
    if (!_bottomLine1) {
        _bottomLine1 = [[UIView alloc]init];
        _bottomLine1.backgroundColor = TKRGBHex(0xCFDCD9);
    }
    return _bottomLine1;
}

- (UIView *)bottomLine2
{
    if (!_bottomLine2) {
        _bottomLine2 = [[UIView alloc]init];
        _bottomLine2.backgroundColor = TKRGBHex(0xCFDCD9);
    }
    return _bottomLine2;
}

- (UIButton *)loginButton
{
    if (!_loginButton) {
        _loginButton = [[UIButton alloc]init];
        [_loginButton setTitle:@"登录" forState:UIControlStateNormal];
        [_loginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        _loginButton.titleLabel.font = [UIFont boldSystemFontOfSize:18];
        _loginButton.backgroundColor = TKRGBHex(0xFF7C72);
        _loginButton.layer.masksToBounds = YES;
        _loginButton.layer.cornerRadius = KFitScale(20);
        [_loginButton addTarget:self action:@selector(onClickLogin:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _loginButton;
}
- (UIButton *)codeBtn
{
    if (!_codeBtn) {
        _codeBtn = [[UIButton alloc]init];
        [_codeBtn setTitle:@"验证码登录" forState:UIControlStateNormal];
        [_codeBtn setTitleColor:TKRGBHex(0xCCCCCC) forState:UIControlStateNormal];
        _codeBtn.titleLabel.font = [UIFont boldSystemFontOfSize:12];
        [_codeBtn addTarget:self action:@selector(onClickLogin:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _codeBtn;
}
- (UIButton *)forgetBtn
{
    if (!_forgetBtn) {
        _forgetBtn = [[UIButton alloc]init];
        [_forgetBtn setTitle:@"忘记密码？" forState:UIControlStateNormal];
        [_forgetBtn setTitleColor:TKRGBHex(0xCCCCCC) forState:UIControlStateNormal];
        _forgetBtn.titleLabel.font = [UIFont boldSystemFontOfSize:12];
        [_forgetBtn addTarget:self action:@selector(onClickLogin:) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _forgetBtn;
}

- (UIView *)thirdPartLine
{
    if (!_thirdPartLine) {
        _thirdPartLine = [[UIView alloc]init];
        _thirdPartLine.backgroundColor = TKRGBHex(0xCFDCD9);
    }
    return _thirdPartLine;
}

- (UILabel *)thirdPartLab
{
    if (!_thirdPartLab) {
        _thirdPartLab = [[UILabel alloc]init];
        _thirdPartLab.text = @"第三方登录";
        _thirdPartLab.font = [UIFont boldSystemFontOfSize:12];
        _thirdPartLab.textColor = TKRGBHex(0x333333);
        _thirdPartLab.backgroundColor = [UIColor whiteColor];
        _thirdPartLab.textAlignment = NSTextAlignmentCenter;
    }
    return _thirdPartLab;
}

- (UIButton *)weixinBtn
{
    if (!_weixinBtn) {
        _weixinBtn = [[UIButton alloc]init];
        [_weixinBtn setImage:[UIImage imageNamed:@"btn_weixin"] forState:UIControlStateNormal];
        [_weixinBtn addTarget:self action:@selector(onClickWeixin:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _weixinBtn;
}
- (UILabel *)weixinLab
{
    if (!_weixinLab) {
        _weixinLab = [[UILabel alloc]init];
        _weixinLab.text = @"微信";
        _weixinLab.font = [UIFont boldSystemFontOfSize:12];
        _weixinLab.textColor = TKRGBHex(0x333333);
    }
    return _weixinLab;
}

- (UIButton *)qqBtn
{
    if (!_qqBtn) {
        _qqBtn = [[UIButton alloc]init];
        [_qqBtn setImage:[UIImage imageNamed:@"btn_qq"] forState:UIControlStateNormal];
        [_qqBtn addTarget:self action:@selector(onClickqq:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _qqBtn;
}
- (UILabel *)qqLab
{
    if (!_qqLab) {
        _qqLab = [[UILabel alloc]init];
        _qqLab.text = @"QQ";
        _qqLab.font = [UIFont boldSystemFontOfSize:12];
        _qqLab.textColor = TKRGBHex(0x333333);
    }
    return _qqLab;
}

- (UIButton *)weiboBtn
{
    if (!_weiboBtn) {
        _weiboBtn = [[UIButton alloc]init];
        [_weiboBtn setImage:[UIImage imageNamed:@"btn_weibo"] forState:UIControlStateNormal];
        [_weiboBtn addTarget:self action:@selector(onClickWeibo:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _weiboBtn;
}
- (UILabel *)weiboLab
{
    if (!_weiboLab) {
        _weiboLab = [[UILabel alloc]init];
        _weiboLab.text = @"微博";
        _weiboLab.font = [UIFont boldSystemFontOfSize:12];
        _weiboLab.textColor = TKRGBHex(0x333333);
    }
    return _weiboLab;
}

- (UIImageView *)image1
{
    if (!_image1) {
        _image1 = [[UIImageView alloc]init];
        _image1.image = [UIImage imageNamed:@"btn_yuan"];
    }
    return _image1;
}

- (UILabel *)lab1
{
    if (!_lab1) {
        _lab1 = [[UILabel alloc]init];
        _lab1.text = @"本人已阅读并同意";
        _lab1.font = [UIFont boldSystemFontOfSize:11];
        _lab1.textColor = TKRGBHex(0x333333);
    }
    return _lab1;
}
- (UILabel *)lab2
{
    if (!_lab2) {
        _lab2 = [[UILabel alloc]init];
        _lab2.text = @"《用户协议》《隐私协议》";
        _lab2.font = [UIFont boldSystemFontOfSize:11];
        _lab2.textColor = TKRGBHex(0x009AFF);
    }
    return _lab2;
}
@end
