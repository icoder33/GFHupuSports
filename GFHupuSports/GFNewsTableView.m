//
//  GFNewsTableView.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/7.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFNewsTableView.h"
#import "GFNewsTableViewCell.h"

static NSString *  const cellId = @"newsId";

@interface GFNewsTableView (){
    
    NSArray *_dataArray;
}

@end

@implementation GFNewsTableView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    
    if (self = [super initWithFrame:frame style:style]) {
        
        NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"NBANewsPlist" ofType:@"plist"];
        _dataArray = [[NSArray alloc] initWithContentsOfFile:plistPath];
        self.dataSource = self;
        self.delegate = self;
        [self registerNib:[UINib nibWithNibName:@"GFNewsTableViewCell" bundle:nil] forCellReuseIdentifier:cellId];
        //NSLog(@"%@",_dataArray);
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

@end
