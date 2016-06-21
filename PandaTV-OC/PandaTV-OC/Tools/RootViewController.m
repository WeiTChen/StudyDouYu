//
//  RootViewController.m
//  PandaTV-OC
//
//  Created by William on 16/6/21.
//  Copyright © 2016年 William. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@property (nonatomic,strong) UIView *navigationView;


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)creatNav
{
    _navigationView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_W, 64)];
    [self.view addSubview:_navigationView];
    _navigationView.backgroundColor = [UIColor whiteColor];
    _navigationView.alpha = 0.8;
}


@end
