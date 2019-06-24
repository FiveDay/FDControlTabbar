<!--![(logo)](http://images.cnitblog.com/blog2015/497279/201505/051004492043385.png)-->



# FDControlTabbar

![Cocoapods](https://img.shields.io/cocoapods/v/FDControlTabbar.svg)

* 快速使用和定制TabBar动画效果。

## Contents

* Getting Started
	* [【Feature】](#Feature)
	* [【Requirements】](#Requirements)
	* [【Install】](#Install)
	* [【Demo】](#Demo)
	

	
## <a id="Feature"></a>Feature

* UITabBarController扩展, 最小化代码侵入性.
* 支持TabBar中间凸起Button显示.
* 支持定制UTabBarItem Lotties动画效果.
* 支持定制UITabBarItem图片帧动画效果.
* 支持修改选中UITabBarItem背景颜色.
* 支持UITaBarItem小红点.
* 兼容UITabBarController的API使用方式.

## <a id="Requirements"></a>Requirements
* iOS8.0 or later

## <a id="Install"></a>Install
* 安装 
	* 通过CocoaPods：`pod install 'FDControlTabbar'`

	<!--等支持Carthage后，开放这部分内容>
	<!--* Installation with [Carthage](https://github.com/Carthage/Carthage)：`github "FiveDay/FDControlTabbar"`-->

* 代码示例
	* lottie格式动画的Tabbar用法
		* 代码
	
		```
		//这里需要保证工程中引入了对应的json文件，如Demo工程需要加入‘home.json’。
		Demo2ViewController* demo = [Demo2ViewController new];
		demo.tabBarItem.lottieName = @"home";
		```
		* 效果
			![Alt Text](https://github.com/znkd/OpenSourcesProjectResource/blob/master/FDControlTabbar/Demo2Gif.gif?raw=true) 
	* keyAnimation动画的Tabbar用法
		* 代码
		
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
		* 效果
			![](https://github.com/znkd/OpenSourcesProjectResource/blob/master/FDControlTabbar/Demo3Gif.gif?raw=true)
	* 中间显示凸起按钮的Tabbar用法
		* 代码
		
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
		* 效果
			![](https://github.com/znkd/OpenSourcesProjectResource/blob/master/FDControlTabbar/BigButtonGif.gif?raw=true)
	
	* 图片数组动画的Tabbar用法
		* 代码
		
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
		* 效果
			![](https://github.com/znkd/OpenSourcesProjectResource/blob/master/FDControlTabbar/Demo4Gif.gif?raw=true)
	* 给TabbarItem加红点提醒的Tabbar用法
		* 代码
		 
		```
		Demo3ViewController* demo = [Demo3ViewController new];
	    demo.tabBarItem.title = @"Demo3";
	    //tabBarItem dot显示
	    demo.tabBarItem.isShowDot = YES;
	    demo.tabBarItem.dotColor = [UIColor blueColor];
		```
		* 效果
			![](https://github.com/znkd/OpenSourcesProjectResource/blob/master/FDControlTabbar/Demo3Gif.gif?raw=true)

## <a id="Demo"></a>Demo

* 仿京东App, 动画Tabbar效果。

![](https://github.com/FiveDay/FDControlTabbar/blob/master/jd1.gif?raw=true)


* 仿咸鱼App, 中间凸起Button效果。

![](https://github.com/FiveDay/FDControlTabbar/blob/master/xy1.gif?raw=true)


