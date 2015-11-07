//
//  GFNewsTableView.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/7.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFNewsTableView.h"
#import "GFNewsTableViewCell.h"
#import <MJRefresh.h>
#import <SVPullToRefresh.h>

static NSString *  const cellId = @"newsId";

@interface GFNewsTableView (){
    
    NSArray *_kArray;
}

@end

@implementation GFNewsTableView



- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    
    if (self = [super initWithFrame:frame style:style]) {
        
        NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"NBANewsPlist" ofType:@"plist"];
        _kArray = [[NSArray alloc] initWithContentsOfFile:plistPath];
        _dataArray = [NSMutableArray array];
        [_dataArray addObjectsFromArray:_kArray];
        self.dataSource = self;
        self.delegate = self;
        [self registerNib:[UINib nibWithNibName:@"GFNewsTableViewCell" bundle:nil] forCellReuseIdentifier:cellId];
        __weak typeof(self) weakSelf = self;
        self.footer = [MJRefreshAutoNormalFooter footerWithRefreshingBlock:^{
            [weakSelf addMoreData];
        }];

    }
    return self;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return _dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GFNewsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    NSDictionary *dic = _dataArray[indexPath.row];
    cell.dataDic = dic;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 110;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 0.1;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    self.block();
}

- (void)addMoreData{
    
    [_dataArray addObjectsFromArray:_kArray];
    [self reloadData];
    [self.footer endRefreshing];
    
}

@end
