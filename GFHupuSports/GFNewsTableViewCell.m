//
//  GFNewsTableViewCell.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/7.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFNewsTableViewCell.h"
#import <UIImageView+WebCache.h>

@implementation GFNewsTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.newsImageView.layer.cornerRadius = 4;
    self.newsImageView.layer.masksToBounds = YES;
    self.newsImageView.contentMode = UIViewContentModeScaleAspectFill;
    self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)layoutSubviews{
    
    [super layoutSubviews];
    NSString *urlStr = self.dataDic[@"newsIcon"];
  //  [self.newsImageView sd_setImageWithURL:[NSURL URLWithString:urlStr]];
    [self.newsImageView sd_setImageWithURL:[NSURL URLWithString:urlStr] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        
        
    }];
    self.titleLab.text = self.dataDic[@"title"];
    self.contentLab.text = self.dataDic[@"content"];
    
}

- (void)setDataDic:(NSDictionary *)dataDic{
    
    _dataDic = dataDic;
    [self setNeedsLayout];
}

@end
