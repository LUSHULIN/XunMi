//
//  LSLDiscoveryViewController.m
//  城觅
//
//  Created by Jason on 2019/3/14.
//  Copyright © 2019 友邦创新资讯. All rights reserved.
//

#import "LSLDiscoveryVC.h"
#import "LSLCollectionViewCell.h"
#import "XqDiscoveryItem.h"
#import "XqDiscoveryThemeItem.h"
#import "LSLDicoverReusableView.h"

@interface LSLDiscoveryVC ()

@property (nonatomic,strong)NSArray *discoveryArray;

@end

@implementation LSLDiscoveryVC

static NSString *ID = @"CELL";
- (void)viewDidLoad {
    [super viewDidLoad];
     self.title = @"发现";
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.collectionView registerNib:[UINib nibWithNibName:@"LSLCollectionViewCell" bundle:nil] forCellWithReuseIdentifier:ID];
    //注册辅助视图
    [self.collectionView registerNib:[UINib nibWithNibName:@"LSLDicoverReusableView" bundle:nil] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"discoverHeader"];
}

- (NSArray *)discoveryArray {
    if (_discoveryArray == nil) {
        _discoveryArray =  [XqDiscoveryItem getDiscoveryList];
    }
    return _discoveryArray;
}

- (instancetype)init {
    //创建流水布局
    UICollectionViewFlowLayout *flowL = [[UICollectionViewFlowLayout alloc] init];
    //计算格子的大小
    CGFloat space = 10;
    CGFloat width = (screenWidth - (space * 3)) / 2;
    flowL.itemSize = CGSizeMake(width, 117);
    flowL.sectionInset = UIEdgeInsetsMake(space, space, space, space);
    //设置最小行间距
    flowL.minimumLineSpacing = 10;
    //设置辅助视图的宽高
    flowL.headerReferenceSize = CGSizeMake(screenWidth, 200);
    //item之间的间隔
//    flowL.minimumInteritemSpacing = 1;
//    flowL.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    return [super initWithCollectionViewLayout:flowL];
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return self.discoveryArray.count;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    XqDiscoveryItem *item = self.discoveryArray[section];
    return item.themes.count;
}

//返回每一行的cell
- ( UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    LSLCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:ID forIndexPath:indexPath];
    XqDiscoveryItem *sectionItem = self.discoveryArray[indexPath.section];
    XqDiscoveryThemeItem *themeItem = sectionItem.themes[indexPath.row];
    cell.themeItem = themeItem;
    cell.backgroundColor = [UIColor whiteColor];
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    //判断是否是头部
    if([kind isEqualToString:UICollectionElementKindSectionHeader]){
        LSLDicoverReusableView *resuableView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"discoverHeader" forIndexPath:indexPath];
         XqDiscoveryItem *sectionItem = self.discoveryArray[indexPath.section];
        resuableView.headerItem = sectionItem.header;
        return resuableView;
    } else {
        return nil;
    }
  
}
@end
