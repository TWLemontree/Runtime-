//
//  NSObject+Property.m
//  Runtime（动态添加属性）
//
//  Created by 抬头看见柠檬树 on 2017/1/24.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "NSObject+Property.h"
#import <objc/message.h>//引入Runtime

@implementation NSObject (Property)

- (void)setProp:(NSString *)prop
{
    /**
     * 通过Runtime动态添加属性

     * object 给哪个对象添加属性
     * key    属性名称
     * value  属性值
     * policy 保存策略
     */
    objc_setAssociatedObject(self, @"prop", prop, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(NSString *)prop{
    return objc_getAssociatedObject(self, @"prop");
}

@end
