//
//  LSLSectionView.h
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LSLSectionItem;
NS_ASSUME_NONNULL_BEGIN

@interface LSLSectionView : UIView

@property (nonatomic,strong)LSLSectionItem *sectionItem;
+ (instancetype)initView;

@end

NS_ASSUME_NONNULL_END
