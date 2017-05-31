//
//  HomeViewController.m
//  valuePassSet
//
//  Created by hooyking on 2017/5/31.
//  Copyright © 2017年 hooyking. All rights reserved.
//

#import "HomeViewController.h"
#import "AttributeViewController.h"
#import "BlockViewController.h"
#import "DelegateViewController.h"
#import "NotificationViewController.h"
#import "SingletonViewController.h"

static NSString *const cellIdentifer = @"cell";

@interface HomeViewController () <UITableViewDelegate,UITableViewDataSource>
@property (nonatomic, strong) UITableView *myTableView;
@property (nonatomic, strong) NSMutableArray *dataArray;
@property (nonatomic, strong) NSMutableArray *vcMArray;

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"传值集合";
    [self.view addSubview:self.myTableView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - 懒加载
- (UITableView *)myTableView {
    if (!_myTableView) {
        _myTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, HEIGHT) style:UITableViewStylePlain];
        _myTableView.delegate = self;
        _myTableView.dataSource = self;
        _myTableView.rowHeight = 80;
        _myTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return _myTableView;
}

- (NSMutableArray *)dataArray {
    if (!_dataArray) {
        _dataArray = [NSMutableArray arrayWithObjects:@"正向传值（属性传值）",@"Block传值",@"代理传值",@"通知传值",@"单例传值", nil];
    }
    return _dataArray;
}

- (NSMutableArray *)vcMArray {
    AttributeViewController *baVC = [[AttributeViewController alloc] init];
    BlockViewController *blockVC = [[BlockViewController alloc] init];
    DelegateViewController *delegateVC = [[DelegateViewController alloc] init];
    NotificationViewController *nofiVC = [[NotificationViewController alloc] init];
    SingletonViewController *singleVC = [[SingletonViewController alloc] init];
    if (!_vcMArray) {
        _vcMArray = [NSMutableArray arrayWithObjects:baVC,blockVC,delegateVC,nofiVC,singleVC, nil];
    }
    for (int i = 0; i < 5; i++) {
        ((UIViewController *)_vcMArray[i]).title = _dataArray[i];
    }
    return _vcMArray;
}

#pragma mark - tableView deletate/dataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifer];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifer];
    }
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = self.dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.navigationController pushViewController:self.vcMArray[indexPath.row] animated:YES];
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

@end
