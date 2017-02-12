//
//  ViewController.m
//  07-Runtime(消息机制)
//
//  Created by yj on 2017/1/3.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import <objc/message.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    Person *p = objc_msgSend(objc_getClass("Person"), sel_registerName("alloc"));
    p = objc_msgSend(p, sel_registerName("init"));
    
    objc_msgSend(p, sel_registerName("eat"));
    objc_msgSend(p, sel_registerName("count:"),3);
}

-(void)test{
    //1.导入<objc/message.h>
    //2.在Build Settings 中搜索msg，设置为NO
    //3.使用runtime
    id objc = objc_msgSend([NSObject class], @selector(alloc));
    objc = objc_msgSend(objc, @selector(init));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
