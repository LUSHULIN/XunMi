//
//  LSLHomeDetailVC.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLHomeDetailVC.h"
#import "LSLCoverView.h"
#import "LSLShareView.h"

@interface LSLHomeDetailVC ()
@property (nonatomic,weak)LSLShareView *shareView;
@end

@implementation LSLHomeDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
     self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageWithRender:@"share"] style:UIBarButtonItemStyleDone target:self action:@selector(share)];
}

- (void)share {
    LSLCoverView *cover = [LSLCoverView show];
    cover.coverViewDidClose = ^{
        [self.shareView hideShareView:^{
            for (UIView *view in [UIApplication sharedApplication].keyWindow.subviews) {
                if ([view isKindOfClass:[LSLCoverView class]]) {
                    [view removeFromSuperview];
                }
            }
        }];
    };
    //弹出分享的view
   self.shareView = [LSLShareView shareView];
}

@end
