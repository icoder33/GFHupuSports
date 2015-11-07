//
//  GFNBAGameView.m
//  GFHupuSports
//
//  Created by wanggf on 15/11/6.
//  Copyright © 2015年 wanggf. All rights reserved.
//

#import "GFNBAGameView.h"
#import "GFNBAGameCell.h"
#import "GFGameHeaderView.h"

static NSString * const cellId = @"NBACell";
static NSString * const headerId = @"headerCell";

@interface GFNBAGameView(){
    
    NSArray *_teamArray;
}

@end

@implementation GFNBAGameView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    
    if (self = [super initWithFrame:frame style:style]) {
        
        self.dataSource = self;
        self.delegate = self;
        [self registerNib:[UINib nibWithNibName:@"GFNBAGameCell" bundle:nil] forCellReuseIdentifier:cellId];
        [self registerClass:[GFGameHeaderView class] forHeaderFooterViewReuseIdentifier:headerId];
        _teamArray = @[@"波士顿凯尔特人",@"迈阿密热火",@"布鲁克林篮网",@"纽约尼克斯",@"奥兰多魔术",@"费城76人",@"华盛顿奇才",@"亚特兰大老鹰",@"芝加哥公牛",@"克利夫兰骑士",@"底特律活塞",@"印第安纳步行者",@"密尔沃基雄鹿",@"新奥尔良鹈鹕",@"多伦多猛龙",@"达拉斯小牛",@"丹佛掘金",@"休斯顿火箭",@"孟菲斯灰熊",@"圣安东尼奥马刺",@"犹他爵士",@"萨克拉门托国王",@"洛杉矶湖人",@"波特兰开拓者",@"菲尼克斯太阳",@"俄亥俄拉玛城雷霆",@"金州勇士",@"洛杉矶快船",@"夏洛特黄蜂"];
    }
    return self;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 20;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    GFNBAGameCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
    
    cell.teamAlab.text = _teamArray[indexPath.row];
    cell.teamAlogo.image = [UIImage imageNamed:[NSString stringWithFormat:@"logo%li",indexPath.row + 1]];
    cell.teamAscore.text = [NSString stringWithFormat:@"%u",80+arc4random()%10];
    cell.teamBlab.text = _teamArray[indexPath.row + 10];
    cell.teamBlogo.image = [UIImage imageNamed:[NSString stringWithFormat:@"logo%li",indexPath.row + 11]];
    cell.teamBscore.text = [NSString stringWithFormat:@"%u",90+arc4random()%20];
    cell.isLive = indexPath.row > 6 ? YES : NO;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 102;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    NSArray *array = @[@"周四",@"周五",@"周六",@"周日",@"周一",@"周二",@"周三"];
    GFGameHeaderView *header = [tableView dequeueReusableHeaderFooterViewWithIdentifier:headerId];
    header.timeLab.text = [NSString stringWithFormat:@"11月%li日 %@", (8+section),array[section%7]];
    return header;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 36;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //由于是虚拟数据 所以不作严谨要求了 传过去值肯定是会变 爱咋咋地了
    self.block(indexPath.row);
}





@end
