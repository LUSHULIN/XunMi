//
//  LSLSave.h
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSLSave : NSObject

+ (void)setObject:(nullable id)value forKey:(NSString *)defaultName;
+ (nullable id)objectForKey:(NSString *)defaultName;
@end

NS_ASSUME_NONNULL_END
