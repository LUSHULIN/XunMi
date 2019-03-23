//
//  LSLNewFeatureVC.m
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLNewFeatureVC.h"
#import "LSLMainViewController.h"

@interface LSLNewFeatureVC ()

@end

@implementation LSLNewFeatureVC

- (void)loadView {
    UIImageView *imageView=  [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"guide"]];
    imageView.userInteractionEnabled = YES;
    self.view = imageView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"startIcon"] forState:UIControlStateNormal];
    btn.bounds = CGRectMake(0, 0, 150, 50);
    btn.center = CGPointMake(screenWidth * 0.5, screenHeight * 0.8);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(startClick) forControlEvents:UIControlEventTouchUpInside];
}

- (void)startClick {
    LSLMainViewController *main = [[LSLMainViewController alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = main;
}


@end
