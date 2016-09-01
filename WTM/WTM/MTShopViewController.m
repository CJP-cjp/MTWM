//
//  MTShopViewController.m
//  WTM
//
//  Created by mac on 16/9/1.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "MTShopViewController.h"

@interface MTShopViewController ()

@end

@implementation MTShopViewController
-(void)setupUI
{
    self.view.backgroundColor = [UIColor magentaColor];
    self.navigationController.navigationBar.alpha = 0;
    self.navigationItem.title = @"粮新发现（上地店）";
    //搭建主视图界面
    //顶部视图
    UIView *heardV = [[UIView alloc]init];
    heardV.backgroundColor = [UIColor cz_randomColor];
    [self.view addSubview:heardV];
    [heardV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.equalTo(self.view);
        make.height.mas_equalTo(126);
    }];
    //中间的分类视图
    UIView *categroyV = [[UIView alloc]init];
    categroyV.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:categroyV];
    [categroyV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.top.equalTo(heardV.mas_bottom);
        make.height.mas_equalTo(37);
    }];
    //底部视图
    UIScrollView *scrollV = [[UIScrollView alloc]init];
    scrollV.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:scrollV];
    [scrollV mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(categroyV);
        make.top.equalTo(categroyV.mas_bottom);
        make.bottom.equalTo(self.view);
    }];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
