//
//  LSLArrowItem.h
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLSettingRowItem.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSLArrowItem : LSLSettingRowItem

//要跳转的类
@property (nonatomic,assign)Class desClass;
//要执行的任务
@property (nonatomic, copy)void(^desTask)();

@end

NS_ASSUME_NONNULL_END
