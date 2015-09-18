//
//  ViewController.m
//  TableViewTapAnimation
//
//  Created by YouXianMing on 15/9/18.
//  Copyright © 2015年 YouXianMing. All rights reserved.
//

#import "ViewController.h"
#import "InfoCell.h"
#import "Model.h"

#define INFO_CELL @"INFO_CELL"

@interface ViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSMutableArray *datasArray;
@property (nonatomic, strong) UITableView    *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.datasArray = [NSMutableArray array];
    [self.datasArray addObject:[Model ModelWithNormalHeight:50.f expendHeight:100.f expend:NO]];
    [self.datasArray addObject:[Model ModelWithNormalHeight:50.f expendHeight:100.f expend:YES]];
    [self.datasArray addObject:[Model ModelWithNormalHeight:50.f expendHeight:100.f expend:YES]];
    [self.datasArray addObject:[Model ModelWithNormalHeight:50.f expendHeight:100.f expend:YES]];
    [self.datasArray addObject:[Model ModelWithNormalHeight:50.f expendHeight:100.f expend:YES]];
    [self.datasArray addObject:[Model ModelWithNormalHeight:50.f expendHeight:100.f expend:YES]];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.delegate       = self;
    self.tableView.dataSource     = self;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView registerClass:[InfoCell class] forCellReuseIdentifier:INFO_CELL];
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return _datasArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    InfoCell *cell = [tableView dequeueReusableCellWithIdentifier:INFO_CELL];
    cell.indexPath = indexPath;
    cell.tableView = tableView;
    
    [cell loadData:_datasArray[indexPath.row]];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    Model *model = _datasArray[indexPath.row];
    
    if (model.expend) {
        
        return model.expendHeight;
        
    } else {
    
        return model.normalHeight;
    }
}

@end
