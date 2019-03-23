//
//  LSLCityBtn.m
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLCityBtn.h"

@implementation LSLCityBtn

- (void)awakeFromNib {
    [super awakeFromNib];
    self.layer.cornerRadius = 10;
    
}

- (void)layoutSubviews {
    [super layoutSubviews];
    if (self.titleLabel.x > self.imageView.x) {
        self.titleLabel.x = self.imageView.x;
        self.imageView.x = CGRectGetMaxX(self.titleLabel.frame) + 10;
    }
}

@end
