//
//  GFGameDetailViewController.m
//  
//
//  Created by wanggf on 15/11/7.
//
//

#import "GFGameDetailViewController.h"
#import "common.h"

@interface GFGameDetailViewController ()<UIWebViewDelegate>{
    
    NSArray *_teamArray;
    UIActivityIndicatorView *_activityIndicatorView;
}

@end

@implementation GFGameDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _teamArray = @[@"波士顿凯尔特人",@"迈阿密热火",@"布鲁克林篮网",@"纽约尼克斯",@"奥兰多魔术",@"费城76人",@"华盛顿奇才",@"亚特兰大老鹰",@"芝加哥公牛",@"克利夫兰骑士",@"底特律活塞",@"印第安纳步行者",@"密尔沃基雄鹿",@"新奥尔良鹈鹕",@"多伦多猛龙",@"达拉斯小牛",@"丹佛掘金",@"休斯顿火箭",@"孟菲斯灰熊",@"圣安东尼奥马刺",@"犹他爵士",@"萨克拉门托国王",@"洛杉矶湖人",@"波特兰开拓者",@"菲尼克斯太阳",@"俄亥俄拉玛城雷霆",@"金州勇士",@"洛杉矶快船",@"夏洛特黄蜂"];
    [self setUpHeadImageView];
    [self setUpWebView];
}


- (void)setUpHeadImageView{
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, 80)];
    imageView.image = [UIImage imageNamed:@"baskball_top_bg"];
    [self.view addSubview:imageView];
    
    UIImageView *teamAlogo = [[UIImageView alloc] initWithFrame:CGRectMake(50, 10, 40, 40)];
    [imageView addSubview:teamAlogo];
    
    UILabel *score = [[UILabel alloc] initWithFrame:CGRectMake(110, 20, 100, 30)];
    [imageView addSubview:score];
    score.textColor = [UIColor whiteColor];
    score.font = [UIFont boldSystemFontOfSize:18];
    
    UILabel *teamAname = [[UILabel alloc] initWithFrame:CGRectMake(20, 50, 120, 20)];
    [imageView addSubview:teamAname];
    teamAname.textColor = [UIColor whiteColor];
    teamAname.font = [UIFont boldSystemFontOfSize:15];
    
    UIImageView *teamBlogo = [[UIImageView alloc] initWithFrame:CGRectMake(220, 10, 40, 40)];
    [imageView addSubview:teamBlogo];
    
    UILabel *teamBname = [[UILabel alloc] initWithFrame:CGRectMake(200, 50, 120, 20)];
    [imageView addSubview:teamBname];
    teamBname.textColor = [UIColor whiteColor];
    teamBname.font = [UIFont boldSystemFontOfSize:15];
    
    
    teamAlogo.image = [UIImage imageNamed:[NSString stringWithFormat:@"logo%li",self.teamTag+1]];
    teamAname.text = _teamArray[self.teamTag];
    
    score.text = @"108 --- 99";
    
    teamBlogo.image = [UIImage imageNamed:[NSString stringWithFormat:@"logo%li",self.teamTag+11]];
    teamBname.text = _teamArray[self.teamTag+10];
    
}

- (void)setUpWebView{
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    webView.delegate = self;
    _activityIndicatorView = [[UIActivityIndicatorView alloc]
                             initWithFrame : CGRectMake(0.0f, 0.0f, 32.0f, 32.0f)] ;
    [_activityIndicatorView setCenter: self.view.center] ;
    [_activityIndicatorView setActivityIndicatorViewStyle: UIActivityIndicatorViewStyleWhite] ;
    [self.view addSubview : _activityIndicatorView] ;
    
    NSURL *url =[NSURL URLWithString:@"http://m.hupu.com/nba/game/recap_150943.html"];
    NSURLRequest *request =[NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [self.view addSubview:webView];
    
}

- (void)webViewDidStartLoad:(UIWebView *)webView
{
    [_activityIndicatorView startAnimating] ;
}
- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    [_activityIndicatorView stopAnimating];
}






@end
