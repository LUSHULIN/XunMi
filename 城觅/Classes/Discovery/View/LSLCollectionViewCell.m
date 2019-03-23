//
//  LSLCollectionViewCell.m
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLCollectionViewCell.h"
#import "XqDiscoveryThemeItem.h"


@interface LSLCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;

@end

@implementation LSLCollectionViewCell

- (void)setThemeItem:(XqDiscoveryThemeItem *)themeItem {
    _themeItem = themeItem;
    self.imageView.image = [UIImage imageNamed:themeItem.img];
    self.titleLabel.text = themeItem.title;
    self.detailLabel.text = themeItem.keywords;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

@end
