//
//  LSLSectionItem.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLSectionItem.h"
#import "MJExtension.h"

@implementation LSLSectionItem

+ (NSDictionary *)objectClassInArray {
    
    return @{
             @"body" : @"LSLHomeCellItem"
             };
}


+ (NSArray *)getSectionItemList {
    
    return  [LSLSectionItem mj_objectArrayWithFilename:@"HomeDatas.plist"];
}
@end
