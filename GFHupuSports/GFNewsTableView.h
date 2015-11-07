//
//  GFNewsTableView.h
//  GFHupuSports
//
//  Created by wanggf on 15/11/7.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^cellSelectBlock)();

@interface GFNewsTableView : UITableView<UITableViewDelegate,UITableViewDataSource>


@property (nonatomic,copy) cellSelectBlock block;

@end
