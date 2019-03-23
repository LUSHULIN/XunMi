//
//  LSLCityCell.m
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLCityCell.h"

@implementation LSLCityCell

+ (instancetype)initWithTable:(UITableView *)tableView {
    LSLCityCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cityCell"];
    if (cell== nil) {
        cell = [[LSLCityCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cityCell"];
        cell.backgroundColor = [UIColor clearColor];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        [cell.textLabel setTextColor:[UIColor whiteColor]];
    }
    return cell;
}

- (void)layoutSubviews {
    [super layoutSubviews];
     self.textLabel.x = (self.w - self.textLabel.w) * 0.5;
}
@end
