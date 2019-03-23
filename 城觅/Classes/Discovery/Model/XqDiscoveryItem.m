//
//  XqMessageItem.m
//  觅城
//
//  Created by 弓虽_子 on 16/6/19.
//  Copyright © 2016年 弓虽_子. All rights reserved.
//

#import "XqDiscoveryItem.h"
#import "MJExtension.h"
@implementation XqDiscoveryItem

//描述数组当中存放的是什么模型
+ (NSDictionary *)objectClassInArray {

    return @{
             @"themes" : @"XqDiscoveryThemeItem"
             };
}

+ (NSArray *)getDiscoveryList {
    
    return  [XqDiscoveryItem mj_objectArrayWithFilename:@"message.plist"];
    
}


@end
