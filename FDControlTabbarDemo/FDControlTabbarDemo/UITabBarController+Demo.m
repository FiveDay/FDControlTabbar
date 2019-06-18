//
//  UITabBarController+Demo.m
//  FDControlTabbarDemo
//
//  Created by zhangyu528 on 2019/6/18.
//  Copyright © 2019 com.FD. All rights reserved.
//

#import <FDControlTabbar/FDControlTabbar.h>

#import "UITabBarController+Demo.h"
#import "TabBarDemoVC/Demo1ViewController.h"
#import "TabBarDemoVC/Demo2ViewController.h"
#import "TabBarDemoVC/Demo3ViewController.h"
#import "TabBarDemoVC/Demo4ViewController.h"

@implementation UITabBarController (Demo)

+ (instancetype)jdTabBarController {
    UITabBarController* instance = [UITabBarController new];
    instance.selectedIndex = 0;
    instance.tabBar.translucent = YES;
    
    Demo1ViewController* demo1 = [Demo1ViewController new];
    demo1.tabBarItem.lottieName = @"home";
    Demo2ViewController* demo2 = [Demo2ViewController new];
    demo2.tabBarItem.lottieName = @"cart";
    Demo3ViewController* demo3 = [Demo3ViewController new];
    demo3.tabBarItem.lottieName = @"category";
    Demo4ViewController* demo4 = [Demo4ViewController new];
    demo4.tabBarItem.lottieName = @"discover";
    
    instance.viewControllers = @[demo1, demo2, demo3, demo4];
    return instance;
}

@end
