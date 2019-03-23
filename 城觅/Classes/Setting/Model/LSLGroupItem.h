//
//  LSLGroupItem.h
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSLGroupItem : NSObject

@property (nonatomic,copy)NSString *headerTitle;
@property (nonatomic,copy)NSString *footerTitle;
@property (nonatomic,strong)NSArray *rowItemArray;

+ (instancetype)itemWithArray:(NSArray *)rowArray;

@end

NS_ASSUME_NONNULL_END
