//
//  Demo1ViewController.m
//  Demo
//
//  Created by zhangyu528 on 2018/12/11.
//  Copyright © 2018 zhangyu528. All rights reserved.
//

#import "Demo1ViewController.h"

//#import <FDControl/FDControl.h>
#import <UIKit/UITableViewController.h>

@interface Demo1ViewController () <UITableViewDelegate, UITableViewDataSource>

//存放测试vc类名、用于tableview数据显示
@property(nonatomic, strong) NSMutableArray* testVCClassNameArray;

//导航控制器
//@property(nonatomic, strong) UINavigationController* navigationController;
@end

@implementation Demo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    //添加测试vc
    [self.testVCClassNameArray addObject:@"A"];
    [self.testVCClassNameArray addObject:@"B"];
    [self.testVCClassNameArray addObject:@"C"];
    [self.testVCClassNameArray addObject:@"D"];
    [self.testVCClassNameArray addObject:@"E"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

# pragma mark - lazy

- (NSMutableArray*)testVCClassNameArray
{
    if (!_testVCClassNameArray) {
        _testVCClassNameArray = [NSMutableArray arrayWithCapacity:0];
        
    }
    
    return _testVCClassNameArray;
}

# pragma mark - delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row >= self.testVCClassNameArray.count) {
        return ;
    }
    
    UITableViewCell* selectedCell = [tableView cellForRowAtIndexPath:indexPath];
    
    [selectedCell setSelected:NO];
    
    //[self.navigationController navToName:self.testVCClassNameArray[indexPath.row] param:nil];
    
}

# pragma mark - dataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.testVCClassNameArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row >= self.testVCClassNameArray.count) {
        return nil;
    }
    
    NSString* commonIdentifier = @"cell_identifier";
    
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:commonIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:commonIdentifier];
    }
    
    //设置cell相关内容
    [cell.textLabel setText:self.testVCClassNameArray[indexPath.row]];
    
    return cell;
}
@end
