//
//  CYXWordViewController.m
//  CYXBuDeJie
//
//  Created by Macx on 15/10/15.
//  Copyright © 2015年 CYX. All rights reserved.
//

#import "CYXWordViewController.h"

@interface CYXWordViewController ()

@end

@implementation CYXWordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置内边距
    self.tableView.contentInset = UIEdgeInsetsMake(CYXNavBarBottom + CYXTitlesViewH, 0, CYXTabBarH, 0);
    self.tableView.scrollIndicatorInsets = self.tableView.contentInset;
    CYXLogFuc;
}
    
#pragma mark - Table view data source
    - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        return 50;
    }
    
    - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        if (cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        }
        
        cell.textLabel.text = [NSString stringWithFormat:@"%@ - %zd", self.title, indexPath.row];
        
        return cell;
    }
@end
