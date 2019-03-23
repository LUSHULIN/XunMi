//
//  LSLCoverView.h
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LSLCoverView : UIView

@property (nonatomic,copy)void(^coverViewDidClose)(void);

+ (instancetype)show;

@end
