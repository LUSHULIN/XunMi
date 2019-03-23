//
//  LSLPushTableViewController.m
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLPushTableViewController.h"
#import "LSLGroupItem.h"
#import "LSLArrowItem.h"
#import "LSLSettingCell.h"
#import "LSLChoseVC.h"


@interface LSLPushTableViewController ()

@end

@implementation LSLPushTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"推送和通知";
    [self setupData];
   
}

#pragma mark - 初始化数据
- (void)setupData {
    LSLArrowItem *item = [LSLArrowItem settingRowItemWithImage:[UIImage imageNamed:@"handShake"] withTitle:@"开奖推送"];
    LSLArrowItem *item2 = [LSLArrowItem settingRowItemWithImage:[UIImage imageNamed:@"handShake"] withTitle:@"点我有惊喜"];
    item2.desClass = [LSLChoseVC class];
    NSArray *array = @[item,item2];
    
    LSLGroupItem *group = [LSLGroupItem itemWithArray:array];
    [self.groupArray addObject:group];
    
}

@end
