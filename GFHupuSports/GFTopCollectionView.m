//
//  GFTopCollectionView.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFTopCollectionView.h"
#import "GFTopCollectionViewCell.h"
#import "common.h"
#import "GFGameModel.h"

static NSString * const cellId = @"topCell";

@implementation GFTopCollectionView


- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    
    if (self = [super initWithFrame:frame collectionViewLayout:layout]) {
        
        self.dataSource = self;
        self.delegate = self;
        self.bounces = NO;
        self.pagingEnabled = YES;
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        [self gameModelArray];
        [self registerClass:[GFTopCollectionViewCell class] forCellWithReuseIdentifier:cellId];
    }
    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return self.gameModelArray.count;
    //return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    GFTopCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    cell.model = self.gameModelArray[indexPath.row];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row != self.currentIndex) {
        
        [collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
        self.currentIndex = indexPath.row;
        
    }
    
//    //NSIndexPath *indexPathSp = [NSIndexPath indexPathForItem:self.currentIndex inSection:0];
//    GFTopCollectionViewCell *cellSp = (GFTopCollectionViewCell *)[self cellForItemAtIndexPath:indexPath];
//    cellSp.isSelected = YES;
//
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake(80, 44);
}

- (void)setCurrentIndex:(NSInteger)currentIndex{
    
    _currentIndex = currentIndex;
    NSMutableArray *array = [NSMutableArray array];
    for (int i; i < self.gameModelArray.count; i++) {
        
        GFGameModel *model = self.gameModelArray[i];
        if (i == currentIndex) {
            
            model.isSelected = YES;
        }else{
            model.isSelected = NO;
        }
        [array addObject:model];
    }
    self.gameModelArray = array;
    [self reloadData];
    

}

- (NSMutableArray *)gameModelArray{
    
    if (!_gameModelArray) {
        
        NSArray *titleArray = @[@"NBA",@"CBA",@"英超",@"西甲",@"德甲"];
        _gameModelArray = [NSMutableArray array];
        for (int i = 0; i < 5; i++) {
            GFGameModel *model = [[GFGameModel alloc] init];
            model.title = titleArray[i];
            if (i == 0) {
                model.isSelected = YES;
                NSLog(@"创建玩");
            }else{
                model.isSelected = NO;
            }
            [_gameModelArray addObject:model];
        }
        
    }
    return _gameModelArray;
}



@end
