//
//  DragerViewController.m
//  抽屉效果
//
//  Created by Jason on 2019/3/13.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "DragerViewController.h"

#define screenW   [UIScreen mainScreen].bounds.size.width
#define target screenW * 0.8

@interface DragerViewController ()<UIGestureRecognizerDelegate>



@end

@implementation DragerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.初始化子控件
    [self addChildView];
    //2.添加视图的手势根据用户点击滑动view
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
    [self.mainView addGestureRecognizer:pan];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeDrawer)];
    tap.delegate = self;
    [self.leftView addGestureRecognizer:tap];
    

}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    if ([NSStringFromClass([touch.view  class]) isEqualToString:@"UITableViewCellContentView"]) {
        return NO;
    } else {
        return YES;
    }
}
/**
 * 添加子控件
 */
- (void)addChildView {
    UIView *leftView = [[UIView alloc]init];
    leftView.backgroundColor = [UIColor whiteColor];
    leftView.frame = self.view.bounds;
    leftView.clipsToBounds = YES;
    [self.view addSubview:leftView];
    _leftView = leftView;
    
    UIView *mainView = [[UIView alloc]init];
    mainView.backgroundColor = [UIColor whiteColor];
    mainView.frame = self.view.bounds;
    mainView.clipsToBounds = YES;
    [self.view addSubview:mainView];
    _mainView = mainView;
}

/**
 * 手势调用函数
 */

- (void)pan:(UIPanGestureRecognizer *)pan {
    //获取偏移量
    CGPoint point = [pan translationInView:self.mainView];
   
    //计算mainView偏移量
    [self positionWithOffset:point.x];
  
    //判断手势的状态
    if (pan.state == UIGestureRecognizerStateEnded) {
        if (self.mainView.frame.origin.x > screenW * 0.5) {
            //计算偏移量
            CGFloat offset = target - self.mainView.frame.origin.x;
            [self positionWithOffset:offset];
            
        } else {
            //关闭抽屉
            [self closeDrawer];
        }
    }
    //清空上次的偏移量
    [pan setTranslation:CGPointZero inView:self.mainView];
}

- (void)openDrawer {
    [UIView animateWithDuration:0.5 animations:^{
        [self positionWithOffset:target];
        CGRect frame = self.mainView.frame;
        frame.origin.x = target;
        self.mainView.frame = frame;
    }];
    
}
//关闭抽屉
- (void)closeDrawer {
    //清空形变
    [UIView animateWithDuration:0.5 animations:^{
        self.mainView.transform = CGAffineTransformIdentity;
        self.mainView.frame = self.view.bounds;
    }];
    
}

- (void)positionWithOffset:(CGFloat)offset {
    //平移操作
    CGRect frame = self.mainView.frame;
    frame.origin.x += offset;
    self.mainView.frame = frame;
    if (self.mainView.frame.origin.x <= 0) {
        self.mainView.frame = self.view.bounds;
    }
    
    if (self.mainView.frame.origin.x >= target) {
        CGRect frame = self.mainView.frame;
        frame.origin.x = target;
        self.mainView.frame = frame;
    }
    //缩放操作
    CGFloat scale = self.mainView.frame.origin.x * 0.3 / screenW;
    scale = 1 - scale;
    self.mainView.transform = CGAffineTransformMakeScale(scale, scale);
    
}

@end
