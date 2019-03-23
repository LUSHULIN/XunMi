//
//  LSLHomeCell.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLHomeCell.h"
#import "LSLHomeCellItem.h"

@interface LSLHomeCell ()
//背景图片
@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UILabel *heartCount;

@end

@implementation LSLHomeCell

-(void)setHomeItem:(LSLHomeCellItem *)homeItem {
    _homeItem = homeItem;
    self.bgImageView.image = [UIImage imageNamed:homeItem.imageURL];
    self.titleLabel.text = homeItem.section_title;
    self.detailLabel.text = homeItem.poi_name;
    self.heartCount.text = homeItem.fav_count;
    
    
}
+ (instancetype)honeCell {
    return [[[NSBundle mainBundle]loadNibNamed:@"LSLHomeCell" owner:nil options:nil]firstObject];
}

@end
