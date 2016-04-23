//
//  PZLTitleCenterController.m
//  ocweibo325
//
//  Created by pengzhilin on 16/3/28.
//  Copyright © 2016年 pengzhilin. All rights reserved.
//

#import "PZLTitleCenterController.h"

@interface PZLTitleCenterController ()
@property (nonatomic,strong)NSArray *shouye;
@end

@implementation PZLTitleCenterController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.shouye = @[@"好友",@"同学",@"明星"];
    self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.separatorStyle = UITableViewCellEditingStyleNone;
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.shouye.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.text = _shouye[indexPath.row];
    
    return cell;
}


@end
