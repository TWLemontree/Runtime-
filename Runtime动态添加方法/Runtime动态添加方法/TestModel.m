//
//  TestModel.m
//  Runtime动态添加方法
//
//  Created by 抬头看见柠檬树 on 2017/1/18.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "TestModel.h"
#import <objc/message.h>

@implementation TestModel
void writeChange(id self,SEL _cmd,NSString *str)
{
    NSLog(@"测试动态添加方法：%@",str);
}

//只要一个对象调用了一个未实现的方法就会调用这个方法进行处理，用于动态添加方法时，处理未实现方法
+ (BOOL)resolveInstanceMethod:(SEL)sel
{
    //找到未实现的方法
    if (sel == NSSelectorFromString(@"write:")) {
        
        /**
         * 动态添加方法
         
         * 参数1 添加方法的类
         * 参数2 添加哪个方法
         * 参数3 方法实现，替换方法（其实是函数）
         * 参数4 方法类型，参考文档 Type Encodings
         */
        class_addMethod(self, sel, (IMP)writeChange, "v@:@");
        return YES;
    }
    
    return [super resolveInstanceMethod:sel];
}

@end
