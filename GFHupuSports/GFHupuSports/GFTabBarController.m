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
        
        GFNavigationController *newsNav = [newsSB instantiateInitialViewController];
        //GFGameViewController *newsVc = (GFGameViewController *)newsNav.topViewController;

        GFNavigationController *bbsNav = [bbsSB instantiateInitialViewController];
        //GFGameViewController *bbsVc = (GFGameViewController *)bbsNav.topViewController;
        
        GFNavigationController *discoverNav = [discoverSB instantiateInitialViewController];
        //GFGameViewController *discoverVc = (GFGameViewController *)discoverNav.topViewController;
        
        GFNavigationController *profileNav = [profileSB instantiateInitialViewController];
        //GFGameViewController *profileVc = (GFGameViewController *)profileNav.topViewController;
        
        self.viewControllers = @[gameNav,newsNav,bbsNav,discoverNav,profileNav];
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
