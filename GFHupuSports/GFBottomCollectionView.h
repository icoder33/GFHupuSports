//
//  GFBottomCollection.h
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GFBottomCollectionView : UICollectionView<UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@property (nonatomic,assign) NSInteger currentIndex;
@property (nonatomic) NSArray *viewArray;

@end
