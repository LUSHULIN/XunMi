//
//  UIImage+image.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "UIImage+image.h"

@implementation UIImage (image)
+ (UIImage *)imageWithRender:(NSString *)imageName {
    UIImage *temp = [UIImage imageNamed:imageName];
    temp = [temp imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return temp;
}
@end
