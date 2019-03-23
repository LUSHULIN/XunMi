//
//  LSLTabBarVC.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLTabBarVC.h"
#import "LSLHomeVC.h"
#import "LSLDiscoveryVC.h"
#import "LSLMessageVC.h"
#import "LSLSettingTableVC.h"
#import "LSLNavVC.h"

@interface LSLTabBarVC ()

@end

@implementation LSLTabBarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.hidden = YES;
    NSArray *childClassName = @[@"LSLHomeVC",
                                @"LSLDiscoveryVC",
                                @"LSLMessageVC",
                                @"LSLSettingTableVC"];
    for (NSString *className in childClassName) {
            UIViewController *vc = [[NSClassFromString(className)alloc] init];
            LSLNavVC *nav = [[LSLNavVC alloc] initWithRootViewController:vc];
            [self addChildViewController:nav];
    }
}

@end
