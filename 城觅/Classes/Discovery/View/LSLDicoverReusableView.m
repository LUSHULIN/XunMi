//
//  LSLDicoverReusableView.m
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLDicoverReusableView.h"
#import "XqDiscoveryHeaderItem.h"

@interface LSLDicoverReusableView ()

@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *name;

@property (weak, nonatomic) IBOutlet UILabel *desLabel;
@end

@implementation LSLDicoverReusableView

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setHeaderItem:(XqDiscoveryHeaderItem *)headerItem {
    _headerItem = headerItem;
    self.iconImageView.image = [UIImage imageNamed:headerItem.image];
    self.name.text = headerItem.feeltitle;
    self.desLabel.text = headerItem.title;
}
@end
