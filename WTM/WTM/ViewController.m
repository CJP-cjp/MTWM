//
//  ViewController.m
//  WTM
//
//  Created by mac on 16/9/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "MTShopViewController.h"
@interface ViewController ()

@end

@implementation ViewController
//监听事件
-(void)btnClick
{
    //创建点餐控制器
    MTShopViewController *shopVC = [[MTShopViewController alloc]init];
    //[self.navigationController popToViewController:shopVC animated:YES];
    [self.navigationController pushViewController:shopVC animated:YES];
}
//搭建界面
-(void)setupUI
{
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn =[UIButton buttonWithType:UIButtonTypeContactAdd];
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        
    }];
    
    
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.alpha = 1;
}
-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self  btnClick];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
