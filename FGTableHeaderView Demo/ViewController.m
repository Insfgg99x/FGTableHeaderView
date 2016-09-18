//
//  ViewController.m
//  FGTableHeaderView
//
//  Created by 夏桂峰 on 16/9/18.
//  Copyright © 2016年 夏桂峰. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+FGTableHeaderView.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)UITableView *tbView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    [self setup];
    [self createTableView];
    
    //set table header view
    [_tbView fg_setHeaderFrame:CGRectMake(0, 0, self.view.frame.size.width, 150) image:[UIImage imageNamed:@"IMG_2174.jpg"]];
}
-(void)setup{
    
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=@"FGTableHeaderView Demo";
}
-(void)createTableView{
    
    _tbView=[[UITableView alloc] initWithFrame:CGRectMake(0, 64, 320, 568) style:UITableViewStylePlain];
    [self.view addSubview:_tbView];
    _tbView.delegate=self;
    _tbView.dataSource=self;
    _tbView.backgroundColor=[UIColor whiteColor];
    UIView *footer=[[UIView alloc] init];
    footer.backgroundColor=[UIColor whiteColor];
    _tbView.tableFooterView=footer;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 4;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSArray *infos=@[@"FGTableHeaderView",@"CGPointZero",@"Jianshu",@"Email"];
    static NSString *cid=@"cellid";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:cid];
    if(!cell){
        cell=[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cid];
    }
    cell.textLabel.text=[infos objectAtIndex:indexPath.row];
    cell.textLabel.textColor=[UIColor blueColor];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSArray *urls=@[@"https://github.com/Insfgg99x/FGTableHeaderView",
                    @"http://cgpointzero.top",
                    @"http://www.jianshu.com/users/c3f2e8c87dc4/latest_articles",
                    @"mailto:newbox0512@yahoo.com?subject=关于FGTableHeaderView的反馈"];
    NSString *urlString=[urls objectAtIndex:indexPath.row];
    if(indexPath.row==3){
        urlString=[urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    }
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlString]];
}

@end
