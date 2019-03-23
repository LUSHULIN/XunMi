//
//  LSLLeftView.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLLeftView.h"
#import "LSLButton.h"
#import "LSLCityBtn.h"
#import "LSLCityCell.h"

@interface LSLLeftView ()<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet LSLButton *preSelectBtn;
@property (weak, nonatomic) UITableView *tableView;
@property (weak, nonatomic) IBOutlet LSLCityBtn *citiButton;
@property (assign,nonatomic)BOOL open;
@property (strong,nonatomic)NSArray *cityArray;

@end

@implementation LSLLeftView


-(NSArray *)cityArray {
    if(_cityArray == nil){
        _cityArray = @[@"北京",@"上海",@"天津",@"烟台",@"广州",@"福建",@"德州",@"泰安"];
    }
    return _cityArray;
}
- (UITableView *)tableView {
    if (_tableView == nil) {
        UITableView *tableView = [[UITableView alloc]init];
        [self addSubview:tableView];
        tableView.x = self.citiButton.frame.origin.x;
        tableView.y = CGRectGetMaxY(self.citiButton.frame);
        tableView.w = self.citiButton.w;
        tableView.alpha = 0.9;
        tableView.layer.cornerRadius = 8;
        tableView.dataSource = self;
        tableView.delegate = self;
        tableView.separatorInset = UIEdgeInsetsMake(0, 10, 0, 10);
        tableView.backgroundColor = [UIColor blackColor];
        _tableView = tableView;
    }
    return _tableView;
}

//城市选择列表
- (IBAction)citySelect:(UIButton *)btn {
    self.open = !self.open;
    
    if (self.open) {
        [UIView animateWithDuration:0.5 animations:^{
             self.tableView.h = 200;
        }];
    } else {
        [UIView animateWithDuration:0.5 animations:^{
            self.tableView.h = 0;
        }];
    }
  
}


+ (instancetype)initLeftView {
    return [[[NSBundle mainBundle] loadNibNamed:@"LSLLeftView" owner:nil options:nil]firstObject];
}

- (IBAction)menuClick:(LSLButton *)btn {
    
    if ([self.delegate respondsToSelector:@selector(leftView:curBtnIndex: preBtnIndex: )]){
        [self.delegate leftView:self curBtnIndex:btn.tag preBtnIndex:self.preSelectBtn.tag];
    }
    
    self.preSelectBtn.selected = NO;
    btn.selected = YES;
    self.preSelectBtn = btn;
    
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cityArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    LSLCityCell *cell = [LSLCityCell initWithTable:tableView];
    cell.textLabel.text = self.cityArray[indexPath.row];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *selectCity = self.cityArray[indexPath.row];
    [self.citiButton setTitle:selectCity forState:UIControlStateNormal];
    if ([self.delegate respondsToSelector:@selector(leftViewDidClickCity:)]) {
        [self.delegate leftViewDidClickCity: self];
    }
    //关闭城市列表
    [self citySelect:self.citiButton];
    //发出通知通知界面更改
    [[NSNotificationCenter defaultCenter]postNotificationName:CITICHANGE object:selectCity];
}

@end
