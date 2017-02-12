//
//  ViewController.m
//  Runtime动态添加方法
//
//  Created by 抬头看见柠檬树 on 2017/1/18.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"
#import "TestModel.h"

/*
    Runtime（动态添加方法）：OC都是懒加载机制，只要一个方法实现了，就会马上添加到方法列表中。
    
    performSelector在动态添加方法时使用
 */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TestModel *testModel = [[TestModel alloc] init];
    
    //performSelector在动态添加方法时使用
    [testModel performSelector:@selector(write:)
                    withObject:@"动态添加方法测试"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
