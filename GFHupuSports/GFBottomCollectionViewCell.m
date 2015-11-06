//
//  GFBottomCollectionViewCell.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFBottomCollectionViewCell.h"

@implementation GFBottomCollectionViewCell


- (UIView *)view{
    
    if (!_view) {
        _view = [[UIView alloc] initWithFrame:self.bounds];
        [self.contentView addSubview:_view];
    }
    return _view;
}



@end
