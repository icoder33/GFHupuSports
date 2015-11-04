//
//  GFTabBarController.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/3.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFTabBarController.h"
#import "GFNavigationController.h"
#import "GFGameViewController.h"
#import "GFNewsViewController.h"
#import "GFBBSViewController.h"
#import "GFDiscoverViewController.h"
#import "GFProfileViewController.h"

@interface GFTabBarController ()

@end

@implementation GFTabBarController

- (instancetype)init{
    
    if (self = [super init]) {
        
        //加载5个Storyboard
        UIStoryboard *gameSB =[UIStoryboard storyboardWithName:@"Game" bundle:nil];
        UIStoryboard *newsSB =[UIStoryboard storyboardWithName:@"News" bundle:nil];
        UIStoryboard *bbsSB =[UIStoryboard storyboardWithName:@"BBS" bundle:nil];
        UIStoryboard *discoverSB =[UIStoryboard storyboardWithName:@"Discover" bundle:nil];
        UIStoryboard *profileSB =[UIStoryboard storyboardWithName:@"Profile" bundle:nil];
        
        //设置tabBarItem
        GFNavigationController *gameNav = [gameSB instantiateInitialViewController];
        //GFGameViewController *gameVc = (GFGameViewController *)gameNav.topViewController;
        gameNav.tabBarItem.image = [[UIImage imageNamed:@"football_btn"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        gameNav.tabBarItem.image = [[UIImage imageNamed:@"football_btn_1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] ;
        
        GFNavigationController *newsNav = [newsSB instantiateInitialViewController];
        //GFGameViewController *newsVc = (GFGameViewController *)newsNav.topViewController;
        newsNav.tabBarItem.image = [[UIImage imageNamed:@"news_btn"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        newsNav.tabBarItem.image = [[UIImage imageNamed:@"news_btn_1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        GFNavigationController *bbsNav = [bbsSB instantiateInitialViewController];
        //GFGameViewController *bbsVc = (GFGameViewController *)bbsNav.topViewController;
        bbsNav.tabBarItem.image = [[UIImage imageNamed:@"bbs_btn"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        bbsNav.tabBarItem.image = [[UIImage imageNamed:@"bbs_btn_1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        GFNavigationController *discoverNav = [discoverSB instantiateInitialViewController];
        //GFGameViewController *discoverVc = (GFGameViewController *)discoverNav.topViewController;
        discoverNav.tabBarItem.image = [[UIImage imageNamed:@"discover_btn"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        discoverNav.tabBarItem.image = [[UIImage imageNamed:@"discover_btn_1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        GFNavigationController *profileNav = [profileSB instantiateInitialViewController];
        //GFGameViewController *profileVc = (GFGameViewController *)profileNav.topViewController;
        profileNav.tabBarItem.image = [[UIImage imageNamed:@"i_btn"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        profileNav.tabBarItem.image = [[UIImage imageNamed:@"i_btn_1"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        self.viewControllers = @[gameNav,newsNav,bbsNav,discoverNav,profileNav];
        self.tabBar.translucent = NO;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
