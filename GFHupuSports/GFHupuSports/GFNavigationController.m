//
//  GFNavigationController.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/3.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFNavigationController.h"

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