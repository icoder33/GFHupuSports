//
//  GFNBAGameView.h
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^cellSelectBlock)(NSInteger);

@interface GFNBAGameView : UITableView<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,copy) cellSelectBlock block;

@end
