//
//  LSLSettingBasicVC.m
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLSettingBasicVC.h"
#import "LSLGroupItem.h"
#import "LSLSettingCell.h"
#import "LSLArrowItem.h"
#import "LSLSwitchItem.h"
#import "LSLSettingCell.h"

@interface LSLSettingBasicVC ()

@end

@implementation LSLSettingBasicVC

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (instancetype)init {
    return [super initWithStyle:UITableViewStyleGrouped];
}

- (NSMutableArray *)groupArray {
    if (_groupArray == nil) {
        _groupArray = [NSMutableArray array];
    }
    return _groupArray;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.groupArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    LSLGroupItem *group = self.groupArray[section];
    return group.rowItemArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LSLSettingCell *cell = [LSLSettingCell cellWithTableView:tableView style:UITableViewCellStyleValue1];
    LSLGroupItem *group = self.groupArray[indexPath.section];
    LSLSettingRowItem *item = group.rowItemArray[indexPath.row];
    cell.rowItem = item;
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    LSLGroupItem *group = self.groupArray[section];
    return group.headerTitle;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    LSLGroupItem *group = self.groupArray[section];
    return group.footerTitle;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    LSLGroupItem *group = self.groupArray[indexPath.section];
    LSLSettingRowItem *item = group.rowItemArray[indexPath.row];
    if ([item isKindOfClass:[LSLArrowItem class]]) {
        LSLArrowItem *arrowItem =(LSLArrowItem *)item;
        if (arrowItem.desTask) {
            arrowItem.desTask();
            return;
        }
        if (arrowItem.desClass) {
            UIViewController *vc = [[arrowItem.desClass alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
    } else if ([item isKindOfClass:[LSLSwitchItem class]]){
        
    }
    
}


@end
