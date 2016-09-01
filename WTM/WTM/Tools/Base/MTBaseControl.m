//
//  MTBaseControl.m
//  MeiTuan
///Users/mac/Desktop/美团外卖01/美团外卖01/PrefixHeader.pch
//  Created by 刘春牢 on 16/7/18.
//  Copyright © 2016年 刘春牢. All rights reserved.
//

#import "MTBaseControl.h"

@implementation MTBaseControl

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)awakeFromNib {

    [self setupUI];
}

- (void)setupUI {}

@end
