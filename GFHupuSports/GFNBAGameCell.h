//
//  GFNBAGameCell.h
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GFNBAGameCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *teamAlogo;
@property (weak, nonatomic) IBOutlet UILabel *teamAlab;
@property (weak, nonatomic) IBOutlet UILabel *teamAscore;
@property (weak, nonatomic) IBOutlet UIImageView *teamBlogo;
@property (weak, nonatomic) IBOutlet UILabel *teamBlab;
@property (weak, nonatomic) IBOutlet UILabel *teamBscore;
@property (assign ,nonatomic) BOOL isLive;
@property (nonatomic) UIImageView *aliveView;
@property (nonatomic) UILabel *timeLab;
@property (nonatomic) UILabel *finishLab;


@end
