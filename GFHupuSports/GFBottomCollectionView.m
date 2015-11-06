//
//  GFBottomCollection.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFBottomCollectionView.h"
#import "GFBottomCollectionViewCell.h"
#import "common.h"

static NSString * const cellId = @"bottomCell";

@implementation GFBottomCollectionView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout{
    
    if (self = [super initWithFrame:frame collectionViewLayout:layout]) {
        
        self.dataSource = self;
        self.delegate = self;
        self.bounces = NO;
        self.pagingEnabled = YES;
        self.showsHorizontalScrollIndicator = NO;
        self.showsVerticalScrollIndicator = NO;
        [self registerClass:[GFBottomCollectionViewCell class] forCellWithReuseIdentifier:cellId];
    }
    return self;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    //return self.viewArray.count;
    return 5;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    GFBottomCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    cell.view = self.viewArray[indexPath.row];
    cell.backgroundColor = [UIColor colorWithRed: (arc4random() % 256 / 256.0 ) green: ( arc4random() % 256 / 256.0 ) blue: ( arc4random() % 256 / 256.0 ) alpha:1];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row != self.currentIndex) {
        
        [collectionView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
        self.currentIndex = indexPath.row;
        
    }
    
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    return CGSizeMake(ScreenWidth, ScreenHeight - 64 - 88);
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    
    
    CGFloat x = targetContentOffset->x;
    NSInteger index = x/ScreenWidth;
    
    targetContentOffset->x = ScreenWidth * index;  // 0
    
    self.currentIndex = index;
    
    
    
}
@end
