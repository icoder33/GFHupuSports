//
//  GFCXViewController.m
//  GFHupuSports
//
//  Created by wanggf on 2017/3/12.
//  Copyright © 2017年 wanggf. All rights reserved.
//

#import "GFCXViewController.h"
#import "common.h"

@interface GFCXViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) UITableView *newsTableView;

@end

@implementation GFCXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setUpNavigationBar];
    //设置主页面
    self.newsTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight - 49 - 64) style:UITableViewStylePlain];
    self.newsTableView.dataSource = self;
    self.newsTableView.delegate = self;
    //self.automaticallyAdjustsScrollViewInsets = YES;
    [self.view addSubview:self.newsTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableview


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [UITableViewCell new];
    cell.textLabel.text = @"我爱陈曦";
    return cell;
}

#pragma mark - NavigationBar

- (void)setUpNavigationBar
{
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"nav_bg"] forBarMetrics:UIBarMetricsDefault];
}

@end
