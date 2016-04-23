//
//  PZLPopTitleView.h
//  ocweibo325
//
//  Created by pengzhilin on 16/3/28.
//  Copyright © 2016年 pengzhilin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PZLPopTitleView : UIImageView

@property (weak, nonatomic)  UIView *contentView;

+(instancetype)showRect:(CGRect)rect;

+(void)hide;

@end
