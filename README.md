<!--![(logo)](http://images.cnitblog.com/blog2015/497279/201505/051004492043385.png)-->



## FDControlTabbar

![Cocoapods](https://img.shields.io/cocoapods/v/FDControlTabbar.svg)

* 这是一种快捷的TabBarItem样式设置的方法，支持主流APP样式的定制化功能。

## Contents

* Getting Started
	* [Features【What is the distinguishing feature of this control】](#What_is_the_distinguishing_feature_of_this_control)
	* [Features【Support what kinds of style to tabbar】](#Support_what_kinds_of_style_to_tabbar)
	* [【Requirements】](#Requirements)
	* [Installation 【How to use FDControlTabbar】](#How_to_use_FDControlTabbar)
	* [【Demo】is here](#Demo)
	

	
## <a id="What_is_the_distinguishing_feature_of_this_control"></a>What is the distinguishing feature of this control

* UITabBarController扩展, 最小化代码侵入性.
* 支持TabBar中间凸起Button显示.
* 支持定制UTabBarItem动画效果.
* 支持定制UITabBarItem图片帧动画效果.
* 支持修改选中UITabBarItem背景颜色.
* 支持UITaBarItem小红点.
* 兼容UITabBarController的api使用方式.


## <a id="Support_what_kinds_of_style_to_tabbar"></a>Support what kinds of style to tabbar
* `lottie`、`KeyAnimation`、`largeImageButton`、`ImageArrayButton`、`badge`

## <a id="Requirements"></a>Requirements
iOS8+

## <a id="How_to_use_FDControlTabbar"></a>How to use FDControlTabbar
* 安装 
	* 通过CocoaPods：`pod 'FDControlTabbar'`

	<!--等支持Carthage后，开放这部分内容>
	<!--* Installation with [Carthage](https://github.com/Carthage/Carthage)：`github "FiveDay/FDControlTabbar"`-->

	* 手动：
    	* 将 `FDControlTabbar` 文件夹拖入工程
    	* 引入头文件：`#import "FDControlTabbar.h"`

* 代码示例
	* lottie格式的用法
	
		```
		//这里需要保证工程中引入了对应的json文件，如这里需要加入‘home.json’。
		Demo2ViewController* demo = [Demo2ViewController new];
	    demo.tabBarItem.lottieName = @"home";
		```
	* keyAnimation的用法

		```
		Demo3ViewController* demo = [Demo3ViewController new];
	    demo.tabBarItem.title = @"Demo3";
	    //设置非选中图片
	    demo.tabBarItem.image = [UIImage imageNamed:@"tabBarBtn3_01"];
	    demo.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabBarBtn3_02"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
	    //tabBarItem选中背景色.
	    demo.tabBarItem.selectedBgColor = [UIColor darkGrayColor];
	    
	    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
	    animation.keyPath = @"transform.scale";
	    animation.values = @[@1.0,@1.3,@0.9,@1.15,@0.95,@1.02,@1.0];
	    animation.duration = 1;
	    animation.calculationMode = kCAAnimationCubic;
	    demo.tabBarItem.animation = animation;
		```
	* 中间大图按钮的用法
	
		```
		UITabBarController* tabCtl = [UITabBarController new];
	    //设置tabBar透过
	    tabCtl.tabBar.translucent = YES;
	    //设置tabBarItem选中后image的合成颜色.
	    tabCtl.tabBar.tintColor = [UIColor blueColor];
	    //创建中间plusButton
	    tabCtl.plusButton = [UIButton new];
	    [tabCtl.plusButton setImage:[UIImage imageNamed:@"+"] forState:UIControlStateNormal];
	    //调整位plusButton的image向上拉伸20达到凸起到tabbar外.
	    tabCtl.plusButton.imageEdgeInsets = UIEdgeInsetsMake(-30, 0, 0, 0);
	    [tabCtl.plusButton addTarget:self action:@selector(onPlusButton) forControlEvents:UIControlEventTouchUpInside];
	```
	
	* 图片数组的用法
	
		```
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
		```
	
	* 给tabbaritem加脚注提醒
		
		```
		Demo3ViewController* demo = [Demo3ViewController new];
	    demo.tabBarItem.title = @"Demo3";
	    //tabBarItem dot显示
	    demo.tabBarItem.isShowDot = YES;
	    demo.tabBarItem.dotColor = [UIColor blueColor];
		```


## <a id="Demo"></a>Demo
* 这里展示一下Demo效果，供参考。

![Alt Text](https://github.com/znkd/OpenSourcesProjectResource/blob/master/FDControlTabbar/FDControlTabbar_Demo.gif?raw=true)




