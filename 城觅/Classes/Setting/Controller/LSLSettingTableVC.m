//
//  LSLSettingTableVC.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLSettingTableVC.h"
#import "LSLSettingRowItem.h"
#import "LSLGroupItem.h"
#import "LSLPushTableViewController.h"
#import "LSLArrowItem.h"
#import "LSLSwitchItem.h"
#import "LSLSettingCell.h"

@interface LSLSettingTableVC ()

@end

@implementation LSLSettingTableVC

static NSString *ID = @"CELL";

- (void)viewDidLoad {
    [super viewDidLoad];
     self.title = @"设置";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self initGroupData];
    [self initGroup2];
    
    UIView *footer = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 0, 44)];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"退出登录" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor blackColor];
    btn.x = 10;
    btn.w = screenWidth - 2 * btn.x;
    btn.h = 44;
    btn.layer.cornerRadius = 8;
    [footer addSubview:btn];

    self.tableView.tableFooterView = footer;
    
}

- (void)initGroupData {
    LSLArrowItem *item = [LSLArrowItem settingRowItemWithImage:[UIImage imageNamed:@"More_LotteryRecommend"] withTitle:@"个人中心"];
    item.desClass = [LSLPushTableViewController class];

    LSLArrowItem *item1 = [LSLArrowItem settingRowItemWithImage:[UIImage imageNamed:@""] withTitle:@"进入选择"];
    item.desClass = [LSLPushTableViewController class];

    LSLSwitchItem *item2 = [LSLSwitchItem settingRowItemWithImage:[UIImage imageNamed:@""] withTitle:@"推送"];
    item.desClass = [LSLPushTableViewController class];
    
    NSArray *array  =@[item,item1,item2];
    LSLGroupItem *group = [LSLGroupItem itemWithArray:array];
    group.headerTitle = @"关联账号";
    
    [self.groupArray addObject:group];
}

- (void)initGroup2 {
    LSLArrowItem *item = [LSLArrowItem settingRowItemWithImage:[UIImage imageNamed:@""] withTitle:@"清理缓存"];
    item.desClass = [LSLPushTableViewController class];
    
    LSLArrowItem *item1 = [LSLArrowItem settingRowItemWithImage:[UIImage imageNamed:@""] withTitle:@"反馈吐槽"];
    item.desClass = [LSLPushTableViewController class];
    
    LSLArrowItem *item2 = [LSLArrowItem settingRowItemWithImage:[UIImage imageNamed:@""] withTitle:@"五星好评"];
    item.desClass = [LSLPushTableViewController class];
    
    NSArray *array  =@[item,item1,item2];
    LSLGroupItem *group = [LSLGroupItem itemWithArray:array];

    [self.groupArray addObject:group];
}
@end
