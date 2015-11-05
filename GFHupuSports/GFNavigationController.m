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

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
