//
//  LSLSettingRowItem.m
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLSettingRowItem.h"

@implementation LSLSettingRowItem

+ (instancetype)settingRowItemWithImage:(UIImage *)image withTitle:(nonnull NSString *)title {
    LSLSettingRowItem *item = [[self alloc] init];
    item.image = image;
    item.title = title;
    return item;
}

@end
