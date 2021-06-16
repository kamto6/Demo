//
//  HomeViewController.m
//  DEMO
//
//  Created by 揭康伟 on 2020/11/12.
//  Copyright © 2020 揭康伟. All rights reserved.
//

#import "HomeViewController.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <Photos/Photos.h>
#import "PhotoViewController.h"

@interface HomeViewController () <UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (nonatomic, strong) UIView     *cameraView;
@property (nonatomic, strong) UIButton   *cameraBtn;
@property (nonatomic, strong) UILabel    *cameraLab;
@property (nonatomic, strong) UIView     *cameraBottomLab;

@property (nonatomic, strong) UIView     *AIView;
@property (nonatomic, strong) UIButton   *AIBtn;
@property (nonatomic, strong) UILabel    *AILab;
@property (nonatomic, strong) UIView     *AIBottomLab;

@property (nonatomic, strong) UIView     *VIPView;
@property (nonatomic, strong) UIButton   *VIPBtn;
@property (nonatomic, strong) UILabel    *VIPLab;
@property (nonatomic, strong) UIView     *VIPBottomLab;

@property (nonatomic, strong) UIView     *PKView;
@property (nonatomic, strong) UIButton   *PKBtn;
@property (nonatomic, strong) UILabel    *PKLab;
@property (nonatomic, strong) UIView     *PKBottomLab;

@property (nonatomic, strong) UIView     *videoView;
@property (nonatomic, strong) UIButton   *videoBtn;
@property (nonatomic, strong) UILabel    *videoLab;
@property (nonatomic, strong) UIView     *videoBottomLab;

@property (nonatomic, strong) UIImagePickerController  *imagePickerController;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initUI];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [SingleInstance sharedInstance].isRaiseCamera = NO;
}

- (void)initUI
{
    self.navigationItem.title = @"首页";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.cameraView];
    [self.cameraView addSubview:self.cameraLab];
    [self.cameraView addSubview:self.cameraBottomLab];
    [self.cameraView addSubview:self.cameraBtn];
    
    [self.view addSubview:self.AIView];
    [self.AIView addSubview:self.AILab];
    [self.AIView addSubview:self.AIBottomLab];
    [self.AIView addSubview:self.AIBtn];
    
    [self.view addSubview:self.VIPView];
    [self.VIPView addSubview:self.VIPLab];
    [self.VIPView addSubview:self.VIPBottomLab];
    [self.VIPView addSubview:self.VIPBtn];
    
    [self.view addSubview:self.PKView];
    [self.PKView addSubview:self.PKLab];
    [self.PKView addSubview:self.PKBottomLab];
    [self.PKView addSubview:self.PKBtn];
    
    [self.view addSubview:self.videoView];
    [self.videoView addSubview:self.videoLab];
    [self.videoView addSubview:self.videoBottomLab];
    [self.videoView addSubview:self.videoBtn];
    
    [self.cameraView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(18));
        make.top.equalTo(self.view).offset(KFitScale(102));
        make.width.equalTo(self.AIView);
        make.height.mas_equalTo(KFitScale(70));
        make.right.equalTo(self.AIView. mas_left).offset(KFitScale(-9));
    }];
    [self.cameraLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.cameraView);
        make.top.equalTo(self.cameraView).offset(KFitScale(20));
        make.height.mas_equalTo(KFitScale(22));
    }];
    [self.cameraBottomLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.cameraView);
        make.top.equalTo(self.cameraLab.mas_bottom).offset(KFitScale(5));
        make.width.mas_equalTo(KFitScale(31));
        make.height.mas_equalTo(KFitScale(3));
    }];
    [self.cameraBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.cameraView);
    }];
    
    [self.AIView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).offset(KFitScale(-18));
        make.top.equalTo(self.view).offset(KFitScale(102));
        make.width.equalTo(self.cameraView);
        make.height.mas_equalTo(KFitScale(70));
    }];
    [self.AILab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.AIView);
        make.top.equalTo(self.AIView).offset(KFitScale(20));
        make.height.mas_equalTo(KFitScale(22));
    }];
    [self.AIBottomLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.AIView);
        make.top.equalTo(self.AILab.mas_bottom).offset(KFitScale(5));
        make.width.mas_equalTo(KFitScale(31));
        make.height.mas_equalTo(KFitScale(3));
    }];
    [self.AIBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.AIView);
    }];
    
    [self.VIPView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.view).offset(KFitScale(18));
        make.top.equalTo(self.cameraView.mas_bottom).offset(KFitScale(10));
        make.width.equalTo(self.AIView);
        make.height.mas_equalTo(KFitScale(70));
        make.right.equalTo(self.PKView. mas_left).offset(KFitScale(-9));
    }];
    [self.VIPLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VIPView);
        make.top.equalTo(self.VIPView).offset(KFitScale(20));
        make.height.mas_equalTo(KFitScale(22));
    }];
    [self.VIPBottomLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.VIPView);
        make.top.equalTo(self.VIPLab.mas_bottom).offset(KFitScale(5));
        make.width.mas_equalTo(KFitScale(31));
        make.height.mas_equalTo(KFitScale(3));
    }];
    [self.VIPBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.VIPView);
    }];
    
    [self.PKView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).offset(KFitScale(-18));
        make.top.equalTo(self.VIPView);
        make.width.equalTo(self.VIPView);
        make.height.mas_equalTo(KFitScale(70));
    }];
    [self.PKLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.PKView);
        make.top.equalTo(self.PKView).offset(KFitScale(20));
        make.height.mas_equalTo(KFitScale(22));
    }];
    [self.PKBottomLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.PKView);
        make.top.equalTo(self.PKLab.mas_bottom).offset(KFitScale(5));
        make.width.mas_equalTo(KFitScale(31));
        make.height.mas_equalTo(KFitScale(3));
    }];
    [self.PKBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.PKView);
    }];
    
    [self.videoView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.view).offset(KFitScale(-18));
        make.top.equalTo(self.VIPView.mas_bottom).offset(KFitScale(10));
        make.left.equalTo(self.view).offset(KFitScale(18));
        make.height.mas_equalTo(KFitScale(70));
    }];
    [self.videoLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.videoView);
        make.top.equalTo(self.videoView).offset(KFitScale(20));
        make.height.mas_equalTo(KFitScale(22));
    }];
    [self.videoBottomLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.videoView);
        make.top.equalTo(self.videoLab.mas_bottom).offset(KFitScale(5));
        make.width.mas_equalTo(KFitScale(31));
        make.height.mas_equalTo(KFitScale(3));
    }];
    [self.videoBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.videoView);
    }];
}



- (void)onClickCamera:(UIButton *)sender
{
    [self checkAlbumPermission];
    
}
- (void)checkAlbumPermission {
    PHAuthorizationStatus status = [PHPhotoLibrary authorizationStatus];
    if (status == PHAuthorizationStatusNotDetermined) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            dispatch_async(dispatch_get_main_queue(), ^{
                if (status == PHAuthorizationStatusAuthorized) {
                    [self selectAlbum];
                }
            });
        }];
    } else if (status == PHAuthorizationStatusDenied || status == PHAuthorizationStatusRestricted) {
        [self alertAlbum];
    } else {
        [self selectAlbum];
    }
}

- (void)selectAlbum {
    //判断相册是否可用
    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]) {
        self.imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        self.imagePickerController.modalPresentationStyle = UIModalPresentationFullScreen;
        [self presentViewController:self.imagePickerController animated:YES completion:^{

        }];
    }
}


- (void)alertAlbum {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil message:@"请在设置中打开相册" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [self dismissViewControllerAnimated:YES completion:nil];
    }];
    [alert addAction:cancel];
    [self presentViewController:alert animated:YES completion:nil];
}

#pragma mark - UIImagePickerControllerDelegate
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<UIImagePickerControllerInfoKey,id> *)info {
    UIImage *image = [info valueForKey:UIImagePickerControllerOriginalImage];
    
    [picker dismissViewControllerAnimated:YES completion:^{
        
        UIStoryboard *mainSb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
        PhotoViewController *target = [mainSb instantiateViewControllerWithIdentifier:@"PhotoViewController"];
        target.image = image;
        target.hidesBottomBarWhenPushed = YES;
        [self.navigationController pushViewController:target animated:YES];
    }];

}


- (void)onClickAI:(UIButton *)sender
{
    //用户2第一次提交
}

- (void)onClickVIP:(UIButton *)sender
{
    //用户2第二次提交
}

- (void)onClickPK:(UIButton *)sender
{
    //用户1第一次提交
}

- (void)onClickVideo:(UIButton *)sender
{
    
}

- (UIView *)cameraView
{
    if (!_cameraView) {
        _cameraView = [[UIView alloc]init];
        _cameraView.backgroundColor = TKRGBHex(0xFDF3F2);
        _cameraView.layer.masksToBounds = YES;
        _cameraView.layer.cornerRadius = KFitScale(5);
    }
    return _cameraView;
}

- (UIButton *)cameraBtn
{
    if (!_cameraBtn) {
        _cameraBtn = [[UIButton alloc]init];
        [_cameraBtn addTarget:self action:@selector(onClickCamera:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _cameraBtn;
}

- (UILabel *)cameraLab
{
    if (!_cameraLab) {
        _cameraLab = [[UILabel alloc]init];
        _cameraLab.text = @"相机";
        _cameraLab.font = [UIFont boldSystemFontOfSize:16];
        _cameraLab.textColor = TKRGBHex(0x333333);
    }
    return _cameraLab;
}

- (UIView *)cameraBottomLab
{
    if (!_cameraBottomLab) {
        _cameraBottomLab = [[UIView alloc]init];
        _cameraBottomLab.backgroundColor = TKRGBHex(0xFF7C72);
        _cameraBottomLab.layer.masksToBounds = YES;
        _cameraBottomLab.layer.cornerRadius = KFitScale(3);
    }
    return _cameraBottomLab;
}

- (UIView *)AIView
{
    if (!_AIView) {
        _AIView = [[UIView alloc]init];
        _AIView.backgroundColor = TKRGBHex(0xF9F8FF);
        _AIView.layer.masksToBounds = YES;
        _AIView.layer.cornerRadius = KFitScale(5);
    }
    return _AIView;
}

- (UIButton *)AIBtn
{
    if (!_AIBtn) {
        _AIBtn = [[UIButton alloc]init];
        [_AIBtn addTarget:self action:@selector(onClickAI:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _AIBtn;
}

- (UILabel *)AILab
{
    if (!_AILab) {
        _AILab = [[UILabel alloc]init];
        _AILab.text = @"AI";
        _AILab.font = [UIFont boldSystemFontOfSize:16];
        _AILab.textColor = TKRGBHex(0x333333);
    }
    return _AILab;
}

- (UIView *)AIBottomLab
{
    if (!_AIBottomLab) {
        _AIBottomLab = [[UIView alloc]init];
        _AIBottomLab.backgroundColor = TKRGBHex(0x685CAF);
        _AIBottomLab.layer.masksToBounds = YES;
        _AIBottomLab.layer.cornerRadius = KFitScale(3);
    }
    return _AIBottomLab;
}

- (UIView *)VIPView
{
    if (!_VIPView) {
        _VIPView = [[UIView alloc]init];
        _VIPView.backgroundColor = TKRGBHex(0xE8F8EA);
        _VIPView.layer.masksToBounds = YES;
        _VIPView.layer.cornerRadius = KFitScale(5);
    }
    return _VIPView;
}

- (UIButton *)VIPBtn
{
    if (!_VIPBtn) {
        _VIPBtn = [[UIButton alloc]init];
        [_VIPBtn addTarget:self action:@selector(onClickVIP:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _VIPBtn;
}

- (UILabel *)VIPLab
{
    if (!_VIPLab) {
        _VIPLab = [[UILabel alloc]init];
        _VIPLab.text = @"VIP定制";
        _VIPLab.font = [UIFont boldSystemFontOfSize:16];
        _VIPLab.textColor = TKRGBHex(0x333333);
    }
    return _VIPLab;
}

- (UIView *)VIPBottomLab
{
    if (!_VIPBottomLab) {
        _VIPBottomLab = [[UIView alloc]init];
        _VIPBottomLab.backgroundColor = TKRGBHex(0x49C25C);
        _VIPBottomLab.layer.masksToBounds = YES;
        _VIPBottomLab.layer.cornerRadius = KFitScale(3);
    }
    return _VIPBottomLab;
}

- (UIView *)PKView
{
    if (!_PKView) {
        _PKView = [[UIView alloc]init];
        _PKView.backgroundColor = TKRGBHex(0xEFF9FF);
        _PKView.layer.masksToBounds = YES;
        _PKView.layer.cornerRadius = KFitScale(5);
    }
    return _PKView;
}

- (UIButton *)PKBtn
{
    if (!_PKBtn) {
        _PKBtn = [[UIButton alloc]init];
        [_PKBtn addTarget:self action:@selector(onClickPK:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _PKBtn;
}

- (UILabel *)PKLab
{
    if (!_PKLab) {
        _PKLab = [[UILabel alloc]init];
        _PKLab.text = @"PK";
        _PKLab.font = [UIFont boldSystemFontOfSize:16];
        _PKLab.textColor = TKRGBHex(0x333333);
    }
    return _PKLab;
}

- (UIView *)PKBottomLab
{
    if (!_PKBottomLab) {
        _PKBottomLab = [[UIView alloc]init];
        _PKBottomLab.backgroundColor = TKRGBHex(0x2FAAF8);
        _PKBottomLab.layer.masksToBounds = YES;
        _PKBottomLab.layer.cornerRadius = KFitScale(3);
    }
    return _PKBottomLab;
}


- (UIView *)videoView
{
    if (!_videoView) {
        _videoView = [[UIView alloc]init];
        _videoView.backgroundColor = TKRGBHex(0xF4F4F4);
        _videoView.layer.masksToBounds = YES;
        _videoView.layer.cornerRadius = KFitScale(5);
    }
    return _videoView;
}

- (UIButton *)videoBtn
{
    if (!_videoBtn) {
        _videoBtn = [[UIButton alloc]init];
        [_videoBtn addTarget:self action:@selector(onClickVideo:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _videoBtn;
}

- (UILabel *)videoLab
{
    if (!_videoLab) {
        _videoLab = [[UILabel alloc]init];
        _videoLab.text = @"视频";
        _videoLab.font = [UIFont boldSystemFontOfSize:16];
        _videoLab.textColor = TKRGBHex(0x333333);
    }
    return _videoLab;
}

- (UIView *)videoBottomLab
{
    if (!_videoBottomLab) {
        _videoBottomLab = [[UIView alloc]init];
        _videoBottomLab.backgroundColor = TKRGBHex(0xD9D6D6);
        _videoBottomLab.layer.masksToBounds = YES;
        _videoBottomLab.layer.cornerRadius = KFitScale(3);
    }
    return _videoBottomLab;
}

- (UIImagePickerController *)imagePickerController {
    if (_imagePickerController == nil) {
        _imagePickerController = [[UIImagePickerController alloc] init];
        _imagePickerController.delegate = self; //delegate遵循了两个代理
        _imagePickerController.allowsEditing = YES;
    }
    return _imagePickerController;
}
@end
