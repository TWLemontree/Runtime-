//
//  ViewController.m
//  Runtime字典转模型
//
//  Created by 抬头看见柠檬树 on 2017/1/28.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"
#import "Model.h"
#import "NSObject+Model.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSDictionary *dict = @{
                           @"key1":@"value1",
                           @"key2":@"value2",
                           @"key3":@"value3",
                           @"modelTwo":@{
                                   @"key1":@"value1",
                                   @"key2":@"value2",
                                   @"key3":@"value3"
                                   }
                           };
    
    Model *model = [Model modelWithDict:dict];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
