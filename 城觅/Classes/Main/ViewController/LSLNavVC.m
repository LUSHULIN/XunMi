//
//  LSLNavVC.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLNavVC.h"

@interface LSLNavVC ()

@end

@implementation LSLNavVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
//设置导航栏的内容和样式
+ (void)initialize {
    UINavigationBar *bar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[LSLNavVC class]]];
    [bar setBackgroundImage:[UIImage imageNamed:@"navBg"] forBarMetrics:UIBarMetricsDefault];
    NSDictionary *dict = @{NSForegroundColorAttributeName:[UIColor whiteColor],
                               NSFontAttributeName:[UIFont systemFontOfSize:20]
                               };
    bar.tintColor = [UIColor whiteColor];
    [bar setTitleTextAttributes:dict];
    
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.childViewControllers.count == 0) {
        //添加leftBarItem
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageWithRender:@"menuIcon"] style:UIBarButtonItemStyleDone target:self action:@selector(openDrage)];
    } else {
         viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageWithRender:@"NavBack"] style:UIBarButtonItemStyleDone target:self action:@selector(back)];
    }
    [super pushViewController:viewController animated:animated];
}
#pragma mark - 发通知打开菜单
- (void)openDrage {
    [[NSNotificationCenter defaultCenter] postNotificationName:openDragerNotification object:nil];
}

- (void)back {
    [self popViewControllerAnimated:YES];
}
@end
