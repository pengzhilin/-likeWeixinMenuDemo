//
//  PZLPopTitleView.m
//  ocweibo325
//
//  Created by pengzhilin on 16/3/28.
//  Copyright © 2016年 pengzhilin. All rights reserved.
//

#import "PZLPopTitleView.h"
#import "UIImage+Image.h"
#import "UIView+PZLExt.h"
#define PZLKeyWindow [UIApplication sharedApplication].keyWindow

@implementation PZLPopTitleView

+(instancetype)showRect:(CGRect)rect{
    PZLPopTitleView *popTitleView = [[PZLPopTitleView alloc]initWithFrame:rect];
    
    popTitleView.userInteractionEnabled = YES;
    
    popTitleView.image = [UIImage imageWithStretchableName:@"popover_background"];
    
    [PZLKeyWindow addSubview:popTitleView];
    
    return popTitleView;
}

+(void)hide{
    for (UIView *popMenu in PZLKeyWindow.subviews) {
        if ([popMenu isKindOfClass:self]) {
            [popMenu removeFromSuperview];
        }
    }
}


-(void)layoutSubviews{
    [super layoutSubviews];
    // 计算内容视图尺寸
    CGFloat y = 9;
    CGFloat margin = 5;
    CGFloat x = margin;
    CGFloat w = self.w - 2 * margin;
    CGFloat h = self.h - y - margin;
    
    _contentView.frame = CGRectMake(x, y, w, h);
    
}

-(void)setContentView:(UIView *)contentView{
//    先移除之前的内容视图
    [_contentView removeFromSuperview];
    _contentView = contentView;
    
    contentView.backgroundColor = [UIColor clearColor];
    
    [self addSubview:contentView];
}

@end
