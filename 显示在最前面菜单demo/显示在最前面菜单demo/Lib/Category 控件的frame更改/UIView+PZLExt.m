//
//  UIView+PZLExt.m
//  2-20彩票项目
//
//  Created by pengzhilin on 16/2/25.
//  Copyright © 2016年 pengzhilin. All rights reserved.
//

#import "UIView+PZLExt.h"

@implementation UIView (PZLExt)

// x
- (CGFloat)x {
    // 返回当前控件的x值
    return self.frame.origin.x;
}
- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}


// y
- (CGFloat)y {
    return self.frame.origin.y;
}
- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}


// w
- (CGFloat)w {
    return self.frame.size.width;
}
- (void)setW:(CGFloat)w {
    CGRect frame = self.frame;
    frame.size.width = w;
    self.frame = frame;
}


// h
- (CGFloat)h {
    return self.frame.size.height;
}
- (void)setH:(CGFloat)h {
    CGRect frame = self.frame;
    frame.size.height = h;
    self.frame = frame;
}


@end
