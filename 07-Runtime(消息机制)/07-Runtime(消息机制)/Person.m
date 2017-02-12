//
//  Person.m
//  07-Runtime(消息机制)
//
//  Created by yj on 2017/1/3.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)eat{
    NSLog(@"吃东西");
}

-(void)count:(int)num{
    NSLog(@"count:%d",num);
}

@end
