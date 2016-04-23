//
//  PZLTitleButton.m
//  ocweibo325
//
//  Created by pengzhilin on 16/3/28.
//  Copyright © 2016年 pengzhilin. All rights reserved.
//

#import "PZLTitleButton.h"
#import "UIView+PZLExt.h"

@implementation PZLTitleButton

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
//        [self setBackgroundImage:[UIImage imageNamed:@"navigationbar_filter_background_highlighted"] forState:UIControlStateHighlighted];
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    if (self.currentImage == nil) return;
    self.titleLabel.x = self.imageView.x;
    
    self.imageView.x = CGRectGetMaxX(self.titleLabel.frame);
    
}

-(void)setTitle:(NSString *)title forState:(UIControlState)state{
    [super setTitle:title forState:state];
    [self sizeToFit];
}
-(void)setImage:(UIImage *)image forState:(UIControlState)state{
    [super setImage:image forState:state];
    [self sizeToFit];
}

@end
