//
//  LSLCoverView.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLCoverView.h"

@implementation LSLCoverView

+ (instancetype)show {
    LSLCoverView *view = [[self alloc] init];
    view.frame = screen;
    view.backgroundColor = [UIColor blackColor];
    view.alpha = 0.3;
    [[UIApplication sharedApplication].keyWindow addSubview:view];
    return view;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    if (self.coverViewDidClose) {
        self.coverViewDidClose();
    }
}
@end
