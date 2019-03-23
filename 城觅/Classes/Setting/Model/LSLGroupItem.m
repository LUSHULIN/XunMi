//
//  LSLGroupItem.m
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLGroupItem.h"

@implementation LSLGroupItem
+ (instancetype)itemWithArray:(NSArray *)rowArray {
    LSLGroupItem *item = [[self alloc]init];
    item.rowItemArray = rowArray;
    return item;
}
@end
