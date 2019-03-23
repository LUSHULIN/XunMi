//
//  LSLChoseVC.m
//  城觅
//
//  Created by Jason on 2019/3/15.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLChoseVC.h"
#import "LSLChoseCell.h"

@interface LSLChoseVC ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,assign)NSInteger curP;
@property (nonatomic,assign) BOOL isOpen;

@end

@implementation LSLChoseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.curP = -1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LSLChoseCell *cell = [tableView dequeueReusableCellWithIdentifier:@"chosecCell"];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"LSLChoseCell" owner:nil options:nil] firstObject];
    }
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return self.curP == indexPath.row && self.isOpen ? 230 : 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.isOpen = !self.isOpen;
    if (self.curP != indexPath.row) {
        self.isOpen = YES;
    }
    self.curP = indexPath.row;
    [tableView beginUpdates];
    [tableView endUpdates];
}
@end
