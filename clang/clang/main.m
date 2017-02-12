//
//  main.m
//  clang
//
//  Created by yj on 2017/1/3.
//  Copyright © 2017年 csip. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        id objc = [NSObject alloc];
        objc = [objc init];
  
    }
    return 0;
}

//id objc = ((NSObject *(*)(id, SEL))(void *)objc_msgSend)((id)objc_getClass("NSObject"), sel_registerName("alloc"));
//id oc = objc_msgSend(objc_getClass("NSObject"), sel_registerName("alloc"));
//clang -rewrite-objc main.m
