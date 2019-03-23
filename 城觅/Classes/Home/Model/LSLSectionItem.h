//
//  LSLSectionItem.h
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LSLSectionItem : NSObject
//headView的颜色
@property (nonatomic,copy)NSString *color;
//headView的标题
@property (nonatomic,copy)NSString *tag_name;
//headView的子标题
@property (nonatomic,copy)NSString *section_count;

//headView的标题
@property (nonatomic,strong)NSArray *body;

+ (NSArray *)getSectionItemList;

@end

