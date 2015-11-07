//
//  GFNewsTableViewCell.h
//  GFHupuSports
//
//  Created by wanggf on 15/11/7.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GFNewsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *newsImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLab;
@property (weak, nonatomic) IBOutlet UILabel *contentLab;
@property (nonatomic) NSDictionary *dataDic;

@end
