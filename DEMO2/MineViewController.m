//
//  MineViewController.m
//  DEMO
//
//  Created by 揭康伟 on 2020/11/12.
//  Copyright © 2020 揭康伟. All rights reserved.
//

#import "MineViewController.h"

@interface MineViewController ()
@property (nonatomic, strong) UIImageView *pieImageView;
@property (nonatomic, strong) UIView  *line1;
@property (nonatomic, strong) UILabel *lab1;
@property (nonatomic, strong) UIView  *line2;
@property (nonatomic, strong) UILabel *lab2;
@property (nonatomic, strong) UIView  *line3;
@property (nonatomic, strong) UILabel *lab3;
@property (nonatomic, strong) UIView  *line4;
@property (nonatomic, strong) UILabel *lab4;
@property (nonatomic, strong) UIView  *line5;
@property (nonatomic, strong) UILabel *lab5;
@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //[self initUI];
}

- (void)initUI
{
    self.navigationItem.title = @"央视市场研究";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.pieImageView];
    [self.view addSubview:self.line1];
    [self.view addSubview:self.lab1];
    [self.view addSubview:self.line2];
    [self.view addSubview:self.lab2];
    [self.view addSubview:self.line3];
    [self.view addSubview:self.lab3];
    [self.view addSubview:self.line4];
    [self.view addSubview:self.lab4];
    [self.view addSubview:self.line5];
    [self.view addSubview:self.lab5];
    
    
    [self.pieImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(KFitScale(181));
        make.width.mas_equalTo(KFitScale(205));
        make.height.mas_equalTo(KFitScale(205));
        make.centerX.equalTo(self.view);
    }];
    
    [self.lab1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.pieImageView.mas_bottom).offset(KFitScale(39));
        make.height.mas_equalTo(KFitScale(20));
        make.left.equalTo(self.line1.mas_right).offset(KFitScale(16));
    }];
    [self.line1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.lab1);
        make.height.mas_equalTo(KFitScale(2));
        make.width.mas_equalTo(KFitScale(29));
        make.left.equalTo(self.view).offset(KFitScale(90));
    }];
    [self.lab2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.lab1.mas_bottom).offset(KFitScale(14));
        make.height.mas_equalTo(KFitScale(20));
        make.left.equalTo(self.line2.mas_right).offset(KFitScale(16));
    }];
    [self.line2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.lab2);
        make.height.mas_equalTo(KFitScale(2));
        make.width.mas_equalTo(KFitScale(29));
        make.left.equalTo(self.view).offset(KFitScale(90));
    }];
    [self.lab3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.lab2.mas_bottom).offset(KFitScale(14));
        make.height.mas_equalTo(KFitScale(20));
        make.left.equalTo(self.line3.mas_right).offset(KFitScale(16));
    }];
    [self.line3 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.lab3);
        make.height.mas_equalTo(KFitScale(2));
        make.width.mas_equalTo(KFitScale(29));
        make.left.equalTo(self.view).offset(KFitScale(90));
    }];
    [self.lab4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.lab3.mas_bottom).offset(KFitScale(14));
        make.height.mas_equalTo(KFitScale(20));
        make.left.equalTo(self.line4.mas_right).offset(KFitScale(16));
    }];
    [self.line4 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.lab4);
        make.height.mas_equalTo(KFitScale(2));
        make.width.mas_equalTo(KFitScale(29));
        make.left.equalTo(self.view).offset(KFitScale(90));
    }];
    [self.lab5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.lab4.mas_bottom).offset(KFitScale(14));
        make.height.mas_equalTo(KFitScale(20));
        make.left.equalTo(self.line5.mas_right).offset(KFitScale(16));
    }];
    [self.line5 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.lab5);
        make.height.mas_equalTo(KFitScale(2));
        make.width.mas_equalTo(KFitScale(29));
        make.left.equalTo(self.view).offset(KFitScale(90));
    }];
}


- (UIImageView *)pieImageView
{
    if (!_pieImageView) {
        _pieImageView = [[UIImageView alloc]init];
        _pieImageView.image = [UIImage imageNamed:@"img_pie"];
    }
    return _pieImageView;
}

- (UIView *)line1
{
    if (!_line1) {
        _line1 = [[UIView alloc]init];
        _line1.backgroundColor = TKRGBHex(0x6C53B6);
    }
    return _line1;
}

- (UILabel *)lab1
{
    if (!_lab1) {
        _lab1 = [[UILabel alloc]init];
        _lab1.text = @"美颜类占59.2%";
        _lab1.textColor = TKRGBHex(0x333333);
        _lab1.font = [UIFont boldSystemFontOfSize:14];
    }
    return _lab1;
}
- (UIView *)line2
{
    if (!_line2) {
        _line2 = [[UIView alloc]init];
        _line2.backgroundColor = TKRGBHex(0x9AD201);
    }
    return _line2;
}

- (UILabel *)lab2
{
    if (!_lab2) {
        _lab2 = [[UILabel alloc]init];
        _lab2.text = @"PS类占20.8%";
        _lab2.textColor = TKRGBHex(0x333333);
        _lab2.font = [UIFont boldSystemFontOfSize:14];
    }
    return _lab2;
}
- (UIView *)line3
{
    if (!_line3) {
        _line3 = [[UIView alloc]init];
        _line3.backgroundColor = TKRGBHex(0xFEB10D);
    }
    return _line3;
}

- (UILabel *)lab3
{
    if (!_lab3) {
        _lab3 = [[UILabel alloc]init];
        _lab3.text = @"“图片、视频剪辑”类占15.9%；";
        _lab3.textColor = TKRGBHex(0x333333);
        _lab3.font = [UIFont boldSystemFontOfSize:14];
    }
    return _lab3;
}
- (UIView *)line4
{
    if (!_line4) {
        _line4 = [[UIView alloc]init];
        _line4.backgroundColor = TKRGBHex(0xEC4633);
    }
    return _line4;
}

- (UILabel *)lab4
{
    if (!_lab4) {
        _lab4 = [[UILabel alloc]init];
        _lab4.text = @"“照片/视频还原“类不到2%。";
        _lab4.textColor = TKRGBHex(0x333333);
        _lab4.font = [UIFont boldSystemFontOfSize:14];
    }
    return _lab4;
}
- (UIView *)line5
{
    if (!_line5) {
        _line5 = [[UIView alloc]init];
        _line5.backgroundColor = TKRGBHex(0x29A3DF);
    }
    return _line5;
}

- (UILabel *)lab5
{
    if (!_lab5) {
        _lab5 = [[UILabel alloc]init];
        _lab5.text = @"“文字识别及还原”类占2.19%";
        _lab5.textColor = TKRGBHex(0x333333);
        _lab5.font = [UIFont boldSystemFontOfSize:14];
    }
    return _lab5;
}
@end
