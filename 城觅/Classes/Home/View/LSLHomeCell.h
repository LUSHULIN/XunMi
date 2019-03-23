//
//  LSLHomeCell.h
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LSLHomeCellItem;
NS_ASSUME_NONNULL_BEGIN

@interface LSLHomeCell : UITableViewCell

@property (nonatomic,strong)LSLHomeCellItem *homeItem ;

+ (instancetype)honeCell;

@end

NS_ASSUME_NONNULL_END
