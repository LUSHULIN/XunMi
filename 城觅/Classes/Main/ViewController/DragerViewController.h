//
//  DragerViewController.h
//  抽屉效果
//
//  Created by Jason on 2019/3/13.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface DragerViewController : UIViewController

@property (nonatomic, weak,readonly)UIView *mainView;
@property (nonatomic, weak,readonly)UIView *leftView;

//打开抽屉
- (void)openDrawer;

//关闭抽屉
- (void)closeDrawer;

@end

NS_ASSUME_NONNULL_END
