//
//  RootView.m
//  PandaTV-OC
//
//  Created by William on 16/6/21.
//  Copyright © 2016年 William. All rights reserved.
//

#import "RootView.h"

@interface RootView()

@property (nonatomic,strong) UIView *navigationView;

@end


@implementation RootView


- (void)creatNavWithTitle:(NSString *)title
{
    self.backgroundColor = [UIColor whiteColor];
    _navigationView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_W, 64)];
    [self addSubview:_navigationView];
    _navigationView.backgroundColor = [UIColor orangeColor];
    
    if (title)
    {
        CGSize size = [title sizeWithAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15]}];
        UILabel *titleLabel;
        if (size.width > SCREEN_W*0.65)
        {
            titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, SCREEN_W*0.65, size.height)];
        }
        else
        {
            titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)];
        }
        titleLabel.font = [UIFont systemFontOfSize:15];
        titleLabel.center = CGPointMake(SCREEN_W/2, 36);
        titleLabel.textColor = [UIColor blackColor];
        titleLabel.text = title;
        [_navigationView addSubview:titleLabel];
        
    }
}

@end
