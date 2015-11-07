//
//  GFGameViewController.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/3.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFGameViewController.h"
#import "GFNBAGameView.h"
#import "GFBottomCollectionView.h"
#import "GFGameDetailViewController.h"


@interface GFGameViewController ()

@end

@implementation GFGameViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpNavBar];
    
    __weak typeof(self) weakSelf = self;
    GFNBAGameView *nbaView = self.bottomView.viewArray[0];
    nbaView.block = ^(NSInteger row){
        
        GFGameDetailViewController *gameDetailVc = [[GFGameDetailViewController alloc] init];
        [weakSelf.navigationController pushViewController:gameDetailVc animated:YES];
    };
    
    
    
}


- (void)setUpNavBar{
    
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"nav_bg"] forBarMetrics:UIBarMetricsDefault];
    UIBarButtonItem *barButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.backBarButtonItem = barButtonItem;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
}

@end
