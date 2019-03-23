//
//  LSLTableViewController.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLHomeVC.h"
#import "LSLSectionItem.h"
#import "LSLHomeCell.h"
#import "LSLHomeCellItem.h"
#import "LSLSectionView.h"
#import "LSLHomeDetailVC.h"

@interface LSLHomeVC ()

@property (nonatomic,strong)NSArray *dataArray;

@end

@implementation LSLHomeVC

- (NSArray *)dataArray {
    if (_dataArray == nil) {
       _dataArray = [LSLSectionItem getSectionItemList];
    }
    return _dataArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    self.tableView.backgroundColor = [UIColor grayColor];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(cityChange:) name:CITICHANGE object:nil];
}

- (void)cityChange:(NSNotification *)noti {
    UIBarButtonItem *right = [[UIBarButtonItem alloc]initWithTitle:noti.object style:UIBarButtonItemStyleDone target:self action:@selector(city)];
    self.navigationItem.rightBarButtonItem = right;
}

- (void)city {
    
}

- (void)menuClick {
    
}
#pragma mark - Table view data source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    LSLSectionItem *item = self.dataArray[section];
    return item.body.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LSLHomeCell *cell = [tableView dequeueReusableCellWithIdentifier:@"homeCellID"];
    if (cell == nil) {
        cell = [LSLHomeCell honeCell];
        cell.backgroundColor = [UIColor clearColor];
    }
    LSLSectionItem *item = self.dataArray[indexPath.section];
    LSLHomeCellItem *homeItem = item.body[indexPath.row];
    cell.homeItem = homeItem;
    return cell;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    LSLSectionItem *sectionItem = self.dataArray[section];
    LSLSectionView *sectionView = [LSLSectionView initView];
    sectionView.sectionItem = sectionItem;
    return sectionView;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    LSLHomeDetailVC *detail = [[LSLHomeDetailVC alloc] init];
    [self.navigationController pushViewController:detail animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 50;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 155;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
@end
