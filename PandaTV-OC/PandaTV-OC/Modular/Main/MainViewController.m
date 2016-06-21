//
//  MainViewController.m
//  PandaTV-OC
//
//  Created by William on 16/6/21.
//  Copyright © 2016年 William. All rights reserved.
//

#import "MainViewController.h"
#import "MainView.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)loadView
{
    self.view  = [MainView new];
}



@end
