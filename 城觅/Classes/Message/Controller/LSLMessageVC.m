//
//  LSLMessageTableVC.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLMessageVC.h"

@interface LSLMessageVC ()

@property (weak,nonatomic)UIView *nearView;
@property (weak,nonatomic)UISegmentedControl *segVC;

@end

@implementation LSLMessageVC

- (UIView *)nearView {
    if (_nearView == nil) {
        UIView *nearView = [[UIView alloc] initWithFrame:self.view.bounds];
        UIImageView *img = [[UIImageView alloc] initWithFrame:nearView.bounds];
        img.image = [UIImage imageNamed:@"wnxBG"];
        [nearView addSubview:img];
        [self.view addSubview:nearView];
        _nearView = nearView;
    }
    return _nearView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
     self.title = @"消息";
    UISegmentedControl *segVC = [[UISegmentedControl alloc]initWithItems:@[@"推荐",@"附近"]];
    segVC.tintColor = [UIColor colorWithRed:20 / 255.0 green:149 / 255.0 blue:128 / 255.0 alpha:1];
    segVC.w = screenWidth * 0.5;
    segVC.selectedSegmentIndex = 0;
    [segVC setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateNormal];
    [segVC addTarget:self action:@selector(changeSeg:) forControlEvents:UIControlEventValueChanged];
    self.segVC = segVC;
    self.navigationItem.titleView = segVC;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cellaaa"];
}

- (void)changeSeg:(UISegmentedControl *)seg {
    NSString *subType = nil;
    if (seg.selectedSegmentIndex == 1) {
        self.nearView.hidden = NO;
        subType = @"fromLeft";
    } else {
        self.nearView.hidden = YES;
        subType = @"fromRight";
    }
    CATransition *anim = [CATransition animation];
    anim.type = @"oglFlip";
    anim.duration = 0.5;
    anim.subtype = subType;
    [self.view.layer addAnimation:anim forKey:@"anima"];
    
    
}

#pragma mark - Table view data source


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 20;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cellaaa" forIndexPath:indexPath];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cellaaa"];
    }
    cell.textLabel.text = @"test data";
    
    return cell;
}



@end
