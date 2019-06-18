//
//  AppDelegate.m
//  FDControlTabbarDemo
//
//  Created by zhang nan on 2019/6/11.
//  Copyright © 2019 com.FD. All rights reserved.
//

#import "AppDelegate.h"

#import <FDControlTabbar/FDControlTabbar.h>
#import "UITabBarController+Demo.h"
#import "Demo1ViewController.h"
#import "Demo2ViewController.h"
#import "Demo3ViewController.h"
#import "Demo4ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    CGRect frame = [[UIScreen mainScreen]bounds];
    self.window = [[UIWindow alloc]initWithFrame:frame];
    
    
    UITabBarController* tabCtl = [UITabBarController jdTabBarController];//[self demoTabBarController];
    
    UINavigationController* rootVC = [[UINavigationController alloc]initWithRootViewController:tabCtl];
    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - private
//
- (UITabBarController*)demoTabBarController {
    UITabBarController* tabCtl = [UITabBarController new];
    tabCtl.selectedIndex = 0;
    //设置tabBar透过
    tabCtl.tabBar.translucent = YES;
    //设置tabBarItem选中后image的合成颜色.
    tabCtl.tabBar.tintColor = [UIColor blueColor];
    //创建中间plusButton
    tabCtl.plusButton = [UIButton new];
    //tabCtl.plusButton.image = [UIImage imageNamed:@"+"];
    [tabCtl.plusButton setImage:[UIImage imageNamed:@"+"] forState:UIControlStateNormal];
    //调整位plusButton的image向上拉伸20达到凸起到tabbar外.
    tabCtl.plusButton.imageEdgeInsets = UIEdgeInsetsMake(-30, 0, 0, 0);
    [tabCtl.plusButton addTarget:self action:@selector(onPlusButton) forControlEvents:UIControlEventTouchUpInside];
    //将子viewController添加到UITabBarController上.
    [tabCtl addChildViewController:[self demo1]];
    [tabCtl addChildViewController:[self demo2]];
    [tabCtl addChildViewController:[self demo3]];
    [tabCtl addChildViewController:[self demo4]];
    
    return tabCtl;
}
//设置图片tab
- (UIViewController*)demo1 {
    Demo1ViewController* demo = [Demo1ViewController new];
    demo.tabBarItem.title = @"Demo1";
    //设置非选中图片
    demo.tabBarItem.image = [UIImage imageNamed:@"tabBarBtn1_01"];
    return demo;
}

//设置lottie tab
- (UIViewController*)demo2 {
    Demo2ViewController* demo = [Demo2ViewController new];
    demo.tabBarItem.lottieName = @"home";
    return demo;
}

//设置帧动画tab
- (UIViewController*)demo3 {
    Demo3ViewController* demo = [Demo3ViewController new];
    demo.tabBarItem.title = @"Demo3";
    //设置非选中图片
    demo.tabBarItem.image = [UIImage imageNamed:@"tabBarBtn3_01"];
    demo.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabBarBtn3_02"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //tabBarItem选中背景色.
    demo.tabBarItem.selectedBgColor = [UIColor darkGrayColor];
    //tabBarItem dot显示
    demo.tabBarItem.isShowDot = YES;
    demo.tabBarItem.dotColor = [UIColor blueColor];
    
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"transform.scale";
    animation.values = @[@1.0,@1.3,@0.9,@1.15,@0.95,@1.02,@1.0];
    animation.duration = 1;
    animation.calculationMode = kCAAnimationCubic;
    demo.tabBarItem.animation = animation;
    return demo;
}

//设置图片动画tab
- (UIViewController*)demo4 {
    Demo4ViewController* demo = [Demo4ViewController new];
    demo.tabBarItem.title = @"Demo4";
    //设置非选中图片
    demo.tabBarItem.image = [UIImage imageNamed:@"tab_home_normal"];
    //设置选中图片
    demo.tabBarItem.selectedImage = [[UIImage imageNamed:@"tab_home_00"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NSMutableArray* list = [NSMutableArray new];
    for (int index = 0; index <= 50; index ++) {
        NSString* name = [NSString stringWithFormat:@"tab_home_%02d", index];
        UIImage* image = [UIImage imageNamed:name];
        [list addObject:image];
    }
    //设置选中帧动画图片
    demo.tabBarItem.animationImages = [list copy];
    return demo;
}

- (void)onPlusButton {
    
}
@end
