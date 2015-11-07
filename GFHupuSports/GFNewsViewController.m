//
//  GFNewsViewController.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/3.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFNewsViewController.h"
#import "GFNewsTableView.h"
#import "common.h"
#import "GFNewsDetailViewController.h"

@interface GFNewsViewController (){
    
    GFNewsTableView *_newsTableView;
}

@end

@implementation GFNewsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNavBar];
    [self setUpTableView];
    
}

- (void)setUpTableView{
    
    _newsTableView = [[GFNewsTableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight - 64) style:UITableViewStyleGrouped];
    
    __weak typeof(self) weakSelf = self;
    _newsTableView.block = ^{
      
        GFNewsDetailViewController *newsDetailVc = [[GFNewsDetailViewController alloc] init];
        [weakSelf.navigationController pushViewController:newsDetailVc animated:YES];
        
    };
    [self.view addSubview:_newsTableView];
}

- (void)setUpNavBar{
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"nav_bg"] forBarMetrics:UIBarMetricsDefault];
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.backBarButtonItem = barButtonItem;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
}



@end
