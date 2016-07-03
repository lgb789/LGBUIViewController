//
//  LGBTTViewController.m
//  LGBUIViewController
//
//  Created by lgb on 16/7/3.
//  Copyright © 2016年 lgb789. All rights reserved.
//

#import "LGBTTViewController.h"
#import "LGBViewController.h"

@interface LGBTTViewController ()

@end

@implementation LGBTTViewController

#pragma mark - 生命周期 

- (void)viewDidLoad {
    [super viewDidLoad];
    /* add subviews */
    
    UIButton *bt = [UIButton buttonWithType:UIButtonTypeCustom];
    bt.frame = CGRectMake(100, 100, 100, 100);
    [bt setTitle:@"button" forState:UIControlStateNormal];
    [bt setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [bt addTarget:self action:@selector(handleButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bt];

    [self layoutSubviews];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    /* add notificatioin */
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    /* remove notificatioin */
}

#pragma mark - 代理

#pragma mark - 事件处理 

-(void)handleButton
{
    [self.navigationController pushViewController:[LGBViewController new] animated:YES];
}

#pragma mark - 私有方法

-(void)layoutSubviews
{
    
}

#pragma mark - 成员变量初始化与设置

@end
