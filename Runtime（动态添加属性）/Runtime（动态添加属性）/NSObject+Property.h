//
//  NSObject+Property.h
//  Runtime（动态添加属性）
//
//  Created by 抬头看见柠檬树 on 2017/1/24.
//  Copyright © 2017年 csip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Property)

//在类别中不能添加属性，使用@property会自动生成get、set方法声明，不生成实现，不生成属性
@property NSString *prop;

@end
