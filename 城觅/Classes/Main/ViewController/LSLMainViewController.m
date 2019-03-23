//
//  LSLMainViewController.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLMainViewController.h"
#import "LSLLeftView.h"
#import "LSLTabBarVC.h"

@interface LSLMainViewController ()<LSLLeftViewDelegate>

@property (nonatomic,strong) LSLTabBarVC *tabVC;

@end

@implementation LSLMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addLeftView];
    [self addChildVC];
    //监听打开抽屉的通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(openDrawer) name:openDragerNotification object:nil];
}
/**
 添加左侧控制器
 */
- (void)addLeftView {
    LSLLeftView *leftView = [LSLLeftView initLeftView];
    leftView.delegate = self;
    leftView.bounds = screen;
    [self.leftView addSubview:leftView];
    
}

- (void)addChildVC {
    LSLTabBarVC *tabVC = [[LSLTabBarVC alloc] init];
    tabVC.view.frame = self.view.bounds;
    [self.mainView addSubview:tabVC.view];
    self.tabVC = tabVC;
}


#pragma mark - 获取用户点击了哪个左侧按钮
- (void)leftView:(LSLLeftView *)leftView curBtnIndex:(NSInteger)curIndex preBtnIndex:(NSInteger)preBtnIndex {
    self.tabVC.selectedIndex = curIndex;
    [self closeDrawer];
}

- (void)leftViewDidClickCity:(LSLLeftView *)leftView {
    [self closeDrawer];
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}

@end
