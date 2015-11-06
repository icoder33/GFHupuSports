//
//  GFTopCollectionViewCell.h
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GFGameModel;

@interface GFTopCollectionViewCell : UICollectionViewCell

@property (nonatomic) UILabel *titleLab;
@property (nonatomic) UIView *selectedView;
@property (nonatomic) GFGameModel *model;

@end
