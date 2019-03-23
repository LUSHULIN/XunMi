//
//  XqMessageItem.h
//  觅城
//
//  Created by 弓虽_子 on 16/6/19.
//  Copyright © 2016年 弓虽_子. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XqDiscoveryHeaderItem;
@interface XqDiscoveryItem : NSObject

@property (nonatomic, strong) XqDiscoveryHeaderItem *header;
//头部
@property (nonatomic, strong) NSArray *themes;


+ (NSArray *)getDiscoveryList;


@end
