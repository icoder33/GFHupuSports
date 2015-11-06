//
//  GFTopCollectionViewCell.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFTopCollectionViewCell.h"
#import <Masonry.h>
#import "GFGameModel.h"


@implementation GFTopCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    
    if (self = [super initWithFrame:frame]) {
        
        self.contentView.backgroundColor = [UIColor whiteColor];
        [self titleLab];
        //[self selectedView];
        self.selectedView.hidden = YES;
        
    }
    return self;
}

- (UILabel *)titleLab{
    
    if (!_titleLab) {
        
        _titleLab = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLab.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:_titleLab];
        
    }
    return _titleLab;
}


- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    [_titleLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
         make.edges.equalTo(self.contentView).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
    }];
    _titleLab.text = self.model.title;
    
    if (self.model.isSelected == 1) {
        
        self.contentView.backgroundColor = [UIColor redColor];
    }else{
        
        self.contentView.backgroundColor = [UIColor whiteColor];
    }

}

- (void)setModel:(GFGameModel *)model{
    
    NSLog(@"%d",model.isSelected);
    
    _model = model;
    [self setNeedsLayout];
}
@end
