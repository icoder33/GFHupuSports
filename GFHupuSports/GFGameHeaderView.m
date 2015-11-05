//
//  GFGameHeaderView.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/5.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFGameHeaderView.h"
#import "common.h"
#import <Masonry.h>

@implementation GFGameHeaderView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier{
    
    if (self = [super initWithReuseIdentifier:reuseIdentifier]) {
        
        self.backgroundColor = RGB(235, 235, 235);
        
    }
    
    return self;
}

- (UILabel *)timeLab{
    
    if (!_timeLab) {
        
        _timeLab = [[UILabel alloc] initWithFrame:CGRectZero];
        [self addSubview:_timeLab];
    }
    
    return _timeLab;
}

- (UILabel *)kindLab{
    
    if (!_kindLab) {
        
        _kindLab = [[UILabel alloc] initWithFrame:CGRectZero];
        _kindLab.text = @"常规赛";
        [self addSubview:_kindLab];
    }
    
    return _kindLab;
}

- (UIImageView *)rankView{
    
    if (!_rankView) {
        
        _rankView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _rankView.image = [UIImage imageNamed:@"rank_ic"];
        [self addSubview:_rankView];
    }
    return _rankView;
}

- (UIButton *)rankBtn{
    
    if (!_rankBtn) {
        
        _rankBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _rankBtn.titleLabel.text = @"排行数据";
        [self addSubview:_rankBtn];
    }
    return _rankBtn;
    
}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    [_timeLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.mas_left).with.offset(4);
        make.top.equalTo(self.mas_top).with.offset(4);
        make.size.mas_equalTo(CGSizeMake(80, 20));
    }];
    
    [_kindLab mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.timeLab.mas_right).with.offset(4);
        make.top.equalTo(self.mas_top).with.offset(4);
        make.size.mas_equalTo(CGSizeMake(40, 20));
        
    }];
    
    [_rankView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.kindLab.mas_left).with.offset(24);
        make.top.equalTo(self.mas_top).with.offset(4);
        make.size.mas_equalTo(CGSizeMake(20, 20));
    }];
    
    [_rankBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.equalTo(self.mas_left).with.offset(4);
        make.top.equalTo(self.mas_top).with.offset(4);
        make.size.mas_equalTo(CGSizeMake(40, 20));
        
    }];
    
}
@end
