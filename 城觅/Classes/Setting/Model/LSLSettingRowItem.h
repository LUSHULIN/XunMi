//
//  LSLSettingRowItem.h
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSLSettingRowItem : NSObject

@property (nonatomic,strong)UIImage *image;
@property (nonatomic,copy)NSString *title;

+ (instancetype)settingRowItemWithImage:(UIImage *)image withTitle:(NSString *)title;
@end

NS_ASSUME_NONNULL_END
