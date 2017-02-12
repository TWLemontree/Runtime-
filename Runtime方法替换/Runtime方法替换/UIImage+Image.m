//
//  UIImage+Image.m
//  Runtime方法替换
//
//  Created by yj on 2017/1/9.
//  Copyright © 2017年 csip. All rights reserved.
//

#import "UIImage+Image.h"
#import <objc/message.h>

@implementation UIImage (Image)
+(void)load{
    Method method1 = class_getClassMethod([UIImage class], @selector(imageNamed:));
    Method method2 = class_getClassMethod([UIImage class], @selector(tw_imageNamed:));
    method_exchangeImplementations(method1, method2);
}

+(UIImage *)tw_imageNamed:(NSString *)name{
    UIImage *image = [UIImage tw_imageNamed:name];
    if (image) {
        NSLog(@"加载图片成功: FUNCTION:%s;imageName：\"%@\"",__FUNCTION__,name);
    }else{
        NSLog(@"警告！加载图片失败：FUNCTION:%s;imageName：\"%@\"",__FUNCTION__,name);
    }
    
    return image;
}

@end
