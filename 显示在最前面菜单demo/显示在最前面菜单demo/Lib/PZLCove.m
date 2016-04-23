//
//  PZLCove.m
//  ocweibo325
//
//  Created by pengzhilin on 16/3/28.
//  Copyright © 2016年 pengzhilin. All rights reserved.
//

#import "PZLCove.h"

#define PZLKeyWindow [UIApplication sharedApplication].keyWindow

@implementation PZLCove
 //设置浅灰色蒙板
 // 显示蒙板
+ (instancetype)show
{
    PZLCove *cover = [[PZLCove alloc] initWithFrame:[UIScreen mainScreen].bounds];
    cover.backgroundColor = [UIColor clearColor];
    
    [PZLKeyWindow addSubview:cover];
    
    return cover;
    
}
// 点击蒙板的时候做事情
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 移除蒙板
    [self removeFromSuperview];
    
    // 通知代理移除菜单
    if ([_delegate respondsToSelector:@selector(coverDidClickCover:)]) {
        
        [_delegate coverDidClickCover:self];
        
    }
    
}

@end
