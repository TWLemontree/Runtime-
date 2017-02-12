//
//  ViewController.m
//  Runtime方法替换
//
//  Created by yj on 2017/1/9.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Image.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //image的图片是随意起的名字，不存在图片
    UIImage *image = [UIImage imageNamed:@"1"];
    
    //这张是存在的
    UIImage *image2 = [UIImage imageNamed:@"RadioHead"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
