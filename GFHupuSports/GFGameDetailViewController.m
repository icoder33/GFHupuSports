//
//  GFGameDetailViewController.m
//  
//
//  Created by wanggf on 15/11/7.
//
//

#import "GFGameDetailViewController.h"
#import "common.h"

@interface GFGameDetailViewController ()

@end

@implementation GFGameDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpHeadImageView];
}


- (void)setUpHeadImageView{
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 64, ScreenWidth, 80)];
    imageView.image = [UIImage imageNamed:@"baskball_top_bg"];
    [self.view addSubview:imageView];
}



@end
