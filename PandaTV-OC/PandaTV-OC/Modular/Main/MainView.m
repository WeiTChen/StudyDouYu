//
//  MainView.m
//  PandaTV-OC
//
//  Created by William on 16/6/21.
//  Copyright © 2016年 William. All rights reserved.
//

#import "MainView.h"


@interface MainView()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView *table;

@end

@implementation MainView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame: frame])
    {
        [self setUp];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder])
    {
        [self setUp];
    }
    return self;
}

- (void)setUp
{
    [self creatNavWithTitle:@"你猜能不能自适应大小创建最合适的label?"];
    _table = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, SCREEN_W, SCREEN_H-64*2)];
    _table.delegate = self;
    _table.dataSource = self;
    [self addSubview:_table];
    [_table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
}

#pragma mark - tableViewDalegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = @"123";
    
    
    return cell;
}
@end
