//
//  GFNavigationController.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/3.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFNavigationController.h"
#import <Masonry.h>

@interface GFNavigationController ()

@end

@implementation GFNavigationController

- (instancetype)init{
    
    if (self = [super init]) {
        
        
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationBar.translucent = NO;
    
    //添加logo图片
    UIImageView *logoImageView =[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"logo"]];
    [self.navigationBar addSubview:logoImageView];
    [logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.center.equalTo(self.navigationBar);
        make.size.mas_equalTo(CGSizeMake(100, 32));
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    //隐藏tabBar
    viewController.hidesBottomBarWhenPushed=YES;
    
    [super pushViewController:viewController animated:YES];
}

-(UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    //恢复tabBar
    return [super popViewControllerAnimated:animated];
}
@end
