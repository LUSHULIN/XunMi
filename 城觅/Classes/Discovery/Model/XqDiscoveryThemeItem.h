//
//  XqMessageThemeItem.h
//  觅城
//
//  Created by 弓虽_子 on 16/6/19.
//  Copyright © 2016年 弓虽_子. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XqDiscoveryThemeItem : NSObject

//开始时间
@property (nonatomic, copy) NSString *begin_time;
//图片
@property (nonatomic, copy) NSString *img;
//关键字
@property (nonatomic, copy) NSString *keywords;
//描述
@property (nonatomic, copy) NSString *text;
//分享地址
@property (nonatomic, copy) NSString *themeurl;
//标题
@property (nonatomic, copy) NSString *title;

@end
