//
//  InfoCell.h
//  TableViewTapAnimation
//
//  Created by YouXianMing on 15/9/18.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Model.h"

@interface InfoCell : UITableViewCell

@property (nonatomic, weak) NSIndexPath  *indexPath;
@property (nonatomic, weak) UITableView  *tableView;

- (void)loadData:(id)data;

@end
