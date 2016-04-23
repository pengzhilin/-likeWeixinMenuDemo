//
//  ViewController.m
//  显示在最前面菜单demo
//
//  Created by pengzhilin on 16/3/28.
//  Copyright © 2016年 pengzhilin. All rights reserved.
//

#import "ViewController.h"
#import "PZLCove.h"
#import "PZLPopTitleView.h"
#import "UIView+PZLExt.h"
#import "PZLTitleCenterController.h"
#import "PZLTitleButton.h"

@interface ViewController ()<PZLCoverDelegate>
@property (nonatomic,strong) PZLTitleButton *titleBtn;
@property (nonatomic,strong) PZLPopTitleView *popTitleView;
@property (nonatomic,strong) PZLTitleCenterController *titleCenterVC;
@end

@implementation ViewController
#pragma mark - 懒加载首页标题按钮控制器
-(PZLTitleCenterController *)titleCenterVC{
    if (_titleCenterVC == nil) {
        _titleCenterVC = [[PZLTitleCenterController alloc]init];
    }
    return _titleCenterVC;
}
#pragma mark - 懒加载首页标题的view，用于装控制器
-(PZLPopTitleView *)popTitleView{
    if (_popTitleView == nil) {
        _popTitleView = [[PZLPopTitleView alloc]init];
    }
    return _popTitleView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)didClickBtn:(UIButton *)button {

//    _titleBtn = button;
        // 设置按钮的状态
        button.selected = !button.selected;
        //弹出蒙版
        PZLCove *cove = [PZLCove show];
        
        cove.delegate = self;
        // 弹出view，把view添加到主窗口
        CGFloat popX = (self.view.w - 200) * 0.5;
        CGFloat popY = 64;
        CGFloat popW = 200;
        CGFloat popH = popW;
        
        PZLPopTitleView *popView = [PZLPopTitleView showRect:CGRectMake(popX, popY, popW, popH)];
        
        
        popView.contentView = self.titleCenterVC.view;

 
    
}
// 遮盖的代理
- (void)coverDidClickCover:(PZLCove *)cover{
    // 隐藏pop菜单
    [PZLPopTitleView hide];
    
    _titleBtn.selected = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
