//
//  LSLSectionView.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLSectionView.h"
#import "LSLSectionItem.h"

@interface LSLSectionView ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *rightLabel;


@end

@implementation LSLSectionView

- (void)setSectionItem:(LSLSectionItem *)sectionItem {
    _sectionItem = sectionItem;
    self.titleLabel.text = sectionItem.tag_name;
    self.rightLabel.text = sectionItem.section_count;
    self.backgroundColor = [UIColor colorWithHexString:sectionItem.color alpha:1];
}

+ (instancetype)initView {
    return [[[NSBundle mainBundle]loadNibNamed:@"LSLSectionView" owner:nil options:nil]firstObject];
}

@end
