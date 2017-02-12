//
//  NSObject+Model.h
//  Runtime字典转模型
//
//  Created by 抬头看见柠檬树 on 2017/1/28.
//  Copyright © 2017年 csip. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Model)

+ (instancetype)modelWithDict:(NSDictionary *)dict;

@end
