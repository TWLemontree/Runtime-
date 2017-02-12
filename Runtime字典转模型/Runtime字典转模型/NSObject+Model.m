//
//  NSObject+Model.m
//  Runtime字典转模型
//
//  Created by 抬头看见柠檬树 on 2017/1/28.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "NSObject+Model.h"
#import <objc/message.h>//引入Runtime

@implementation NSObject (Model)

+ (instancetype)modelWithDict:(NSDictionary *)dict
{
    id objc = [[self alloc] init];
    
    /**
     * Runtime字典转模型思路
     *
     * 通过Runtime获取模型中的属性（对应字典中的key），通过属性去字典中取出对应的value，然后给模型的属性赋值。
     */
    
    [self demo1];
    [self demo2];
    
    // 获取模型中的所有成员变量 key
    unsigned int count = 0;
    // 获取成员变量数组
    Ivar *ivarList = class_copyIvarList(self, &count);
    
    // 遍历所有成员变量
    for (int i = 0; i < count; i++) {
        // 获取成员变量
        Ivar ivar = ivarList[i];
        
        // 获取成员变量名
        NSString *ivarName = [NSString stringWithUTF8String:ivar_getName(ivar)];
        
        // 获取成员变量类型
        NSString *ivarType = [NSString stringWithUTF8String:ivar_getTypeEncoding(ivar)];
        // @\"ModelTwo\" -> ModelTwo
        ivarType = [ivarType stringByReplacingOccurrencesOfString:@"\"" withString:@""];
        ivarType = [ivarType stringByReplacingOccurrencesOfString:@"@" withString:@""];
        
        // 获取key,截取掉下划线
        NSString *key = [ivarName substringFromIndex:1];
        
        id value = dict[key];
        
        //二级转换：判断value是不是字典，如果是字典，字典转换成ivarType对应的模型
        //自定义对象才需要转换(hasPrefix: 是包含前缀xx)
        if ([value isKindOfClass:[NSDictionary class]]
            && ![ivarType hasPrefix:@"NS"]) {
            // 获取该自定义类的类型
            Class modelClass = NSClassFromString(ivarType);
            // 将自身（dic）转换成自定义模型（modelTwo）
            value = [modelClass modelWithDict:value];
        }
        
        // 给模型中属性赋值
        if (value) {
            [objc setValue:value forKey:key];
        }
    }
    
    return objc;
}

//用于解释获取成员变量时，class_copyIvarList(self, &count)里的count为何改变
- (void)demo1
{
    int count = 0;
    [self testDemo1:&count];
    
    NSLog(@"count:%d",count);
}

- (void)testDemo1:(int *)count
{
    *count = 1;
}

//解释为何Ivar *ivarList 是个数组
- (void)demo2
{
    int a = 1;
    int b = 2;
    int c = 3;
    int arr[] = {a,b,c};
    int *p = arr;
    
    NSLog(@"p[1]:%d p[2]:%d",p[1],p[2]);
}


@end














