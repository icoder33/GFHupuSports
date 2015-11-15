//
//  GFSlideViewController.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFSlideViewController.h"
#import "GFTopCollectionView.h"
#import "GFBottomCollectionView.h"
#import "common.h"

@interface GFSlideViewController (){
    
    GFTopCollectionView *_topView;
    GFBottomCollectionView *_bottomView;
}

@end

@implementation GFSlideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self addTopView];
    [self addBottomView];
    
    [_topView addObserver:self forKeyPath:@"currentIndex" options:NSKeyValueObservingOptionNew context:nil];
    [_bottomView addObserver:self forKeyPath:@"currentIndex" options:NSKeyValueObservingOptionNew context:nil];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    
    NSNumber *number = [change objectForKey:@"new"];
    
    NSInteger index = [number integerValue];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:index inSection:0];
    
    if ([object isKindOfClass:[GFTopCollectionView class]] && _bottomView.currentIndex != index) {
        
        [_bottomView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
        
        _bottomView.currentIndex = index;
        
        NSLog(@"上面动了 下面再动");
        
    }else if([object isKindOfClass:[GFBottomCollectionView class]] && _topView.currentIndex!= index){
        
        [_topView scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
        
        _topView.currentIndex = index;
        NSLog(@"下面动了 上面再动");
        
    }

}


- (void)addTopView{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //layout.itemSize
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    //间距
    layout.minimumInteritemSpacing = 0;
    layout.minimumLineSpacing = 0;
    
    _topView = [[GFTopCollectionView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 30) collectionViewLayout:layout];
    [self.view addSubview:_topView];
}

- (void)addBottomView{
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    //layout.itemSize
    layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    
    //间距
    layout.minimumInteritemSpacing = 0;
    layout.minimumLineSpacing = 0;
    
    _bottomView = [[GFBottomCollectionView alloc] initWithFrame:CGRectMake(0, 30 , ScreenWidth, ScreenHeight - 74) collectionViewLayout:layout];
    [self.view addSubview:_bottomView];
}
    

@end
