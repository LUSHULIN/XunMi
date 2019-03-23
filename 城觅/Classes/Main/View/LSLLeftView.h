//
//  LSLLeftView.h
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LSLButton;
@class LSLLeftView;

@protocol LSLLeftViewDelegate <NSObject>

@optional
- (void)leftView:(LSLLeftView *)leftView curBtnIndex:(NSInteger)curIndex preBtnIndex:(NSInteger)preBtnIndex;
- (void)leftViewDidClickCity:(LSLLeftView *)leftView;
@end

@interface LSLLeftView : UIView

@property (nonatomic,weak)id<LSLLeftViewDelegate>delegate;

+ (instancetype)initLeftView;

@end

