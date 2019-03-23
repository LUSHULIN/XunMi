//
//  LSLSettingCell.m
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLSettingCell.h"
#import "LSLSettingRowItem.h"
#import "LSLArrowItem.h"
#import "LSLSwitchItem.h"

@implementation LSLSettingCell

- (void)setRowItem:(LSLSettingRowItem *)rowItem {
    _rowItem = rowItem;
    self.textLabel.text = rowItem.title;
    self.imageView.image = rowItem.image;
    if ([rowItem isKindOfClass: [LSLArrowItem class]]) {
        self.accessoryView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"arrow_right"]];
        
    } else if([rowItem isKindOfClass:[LSLSwitchItem class]]) {
        self.accessoryView = [[UISwitch alloc]init];
    } else {
        self.accessoryView = nil;
    }
}

+ (instancetype)cellWithTableView:(UITableView *)tableView style:(UITableViewCellStyle)style {
    LSLSettingCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[LSLSettingCell alloc] initWithStyle:style reuseIdentifier:@"cell"];
        cell.layer.cornerRadius = 5;
    }
    return cell;
}

- (void)setFrame:(CGRect)frame {
    CGFloat margin = 10;
    frame.origin.x = margin;
    frame.size.width -= 2 * margin;
    frame.size.height -= 2;
    [super setFrame:frame];
}
@end
