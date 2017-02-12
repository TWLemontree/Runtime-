//
//  AppDelegate.h
//  Runtime（动态添加属性）
//
//  Created by 抬头看见柠檬树 on 2017/1/22.
//  Copyright © 2017年 csip. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

