//
//  GFBottomCollectionViewCell.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFBottomCollectionViewCell.h"

@implementation GFBottomCollectionViewCell



- (void)setView:(UIView *)view{
    
    _view = view;
    [self.contentView addSubview:_view];
    
}

- (void)layoutSubviews{
    
    [super layoutSubviews];
}


@end
