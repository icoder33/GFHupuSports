//
//  GFNBAGameCell.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFNBAGameCell.h"
#import <Masonry.h>

@implementation GFNBAGameCell

- (void)awakeFromNib {
    // Initialization code
//    self.teamAlogo.layer.cornerRadius = 18;
//    self.teamAlogo.layer.masksToBounds = YES;
//    
//    self.teamBlogo.layer.cornerRadius = 18;
//    self.teamBlogo.layer.masksToBounds = YES;
    [self timeLab];
    [self aliveView];
    [self finishLab];
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    [_finishLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.right.equalTo(self.contentView.mas_right).offset(-8);
        make.centerY.equalTo(self.contentView);
        make.size.mas_equalTo(CGSizeMake(60, 36));
    }];
    
    [_aliveView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).with.offset(24);
        make.right.equalTo(self.contentView.mas_right).with.offset(-12);
        make.size.mas_equalTo(CGSizeMake(60, 30));
    }];
    
    [_timeLab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.equalTo(self.contentView.mas_bottom).with.offset(0);
        make.right.equalTo(self.contentView.mas_right).with.offset(-8);
        make.size.mas_equalTo(CGSizeMake(60, 60));
        
    }];
    
    if (self.isLive) {
        
        _finishLab.hidden = YES;
        _timeLab.hidden = NO;
        _aliveView.hidden = NO;
        
    }else{
        _finishLab.hidden = NO;
        _timeLab.hidden = YES;
        _aliveView.hidden = YES;
        
    }
   
}

- (UILabel *)timeLab{
    
    if (!_timeLab) {
        
        _timeLab = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLab.text = @"第三节\n 3:45";
        _timeLab.textColor = [UIColor lightGrayColor];
        _timeLab.numberOfLines = 0;
        _timeLab.font = [UIFont systemFontOfSize:12];
        [self.contentView addSubview:_timeLab];
    }
    return _timeLab;
}

- (UIImageView *)aliveView{
    
    if (!_aliveView) {
        _aliveView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _aliveView.image = [UIImage imageNamed:@"bg_match_live_guess_1"];
        [self.contentView addSubview:_aliveView];
        
    }
    return _aliveView;
    
}

- (UILabel *)finishLab{
    
    if (!_finishLab) {
        _finishLab = [[UILabel alloc] initWithFrame:CGRectZero];
        _finishLab.text = @"已结束";
        _finishLab.textColor = [UIColor lightGrayColor];
        _finishLab.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:_finishLab];
    }
    return _finishLab;
}




@end
