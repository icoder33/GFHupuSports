//
//  GFSlideViewController.h
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import <UIKit/UIKit.h>

@class GFTopCollectionView;
@class GFBottomCollectionView;

@interface GFSlideViewController : UIViewController

@property (nonatomic) GFTopCollectionView *topView;
@property (nonatomic) GFBottomCollectionView *bottomView;

@end
