//
//  LSLSave.m
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLSave.h"

@implementation LSLSave

+ (void)setObject:(nullable id)value forKey:(NSString *)defaultName {
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
}

+ (nullable id)objectForKey:(NSString *)defaultName {
   return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
    
}


@end
