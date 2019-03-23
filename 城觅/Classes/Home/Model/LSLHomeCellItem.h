//
//  LSLHomeCellItem.h
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSLHomeCellItem : NSObject
/**
 *  标题
 */
@property (nonatomic, copy) NSString *section_title;
/**
 *  图片地址
 */
@property (nonatomic, copy) NSString *imageURL;
/**
 *  浏览次数
 */
@property (nonatomic, copy) NSString *fav_count;
/**
 *  底部名称
 */
@property (nonatomic, copy) NSString *poi_name;
@end

NS_ASSUME_NONNULL_END
