//
//  ViewController.m
//  Runtime（动态添加属性）
//
//  Created by 抬头看见柠檬树 on 2017/1/22.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+Property.h"//动态添加属性的分类

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //为object对象动态添加一个prop属性
    NSObject *object = [[NSObject alloc] init];
    object.prop      = @"prop";
    NSLog(@"%@",object.prop);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
