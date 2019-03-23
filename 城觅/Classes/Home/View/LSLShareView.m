//
//  LSLShareView.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLShareView.h"
#import "LSLCoverView.h"

@implementation LSLShareView

- (void)hideShareView:(void(^)())compone {
    [UIView animateWithDuration:0.25 animations:^{
        CGRect frame = self.frame;
        frame.origin.y = [UIScreen mainScreen].bounds.size.height;
        self.frame = frame;
        
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
        compone();
        
    }];
    
}

+ (instancetype)shareView {
    LSLShareView *shareView = [[[NSBundle mainBundle]loadNibNamed:@"LSLShareView" owner:nil options:nil]firstObject];
    shareView.w = screenWidth;
    shareView.y = screenHeight;
    
    [[UIApplication sharedApplication].keyWindow addSubview:shareView];
    [UIView animateWithDuration:0.25 animations:^{
        shareView.y = screenHeight - shareView.h;
    }];
    
    return shareView;
}


@end
