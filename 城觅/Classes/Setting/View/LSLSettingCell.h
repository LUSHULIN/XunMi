//
//  LSLSettingCell.h
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class LSLSettingRowItem;

@interface LSLSettingCell : UITableViewCell

@property (nonatomic,strong)LSLSettingRowItem *rowItem;

+ (instancetype)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style;

@end

NS_ASSUME_NONNULL_END
