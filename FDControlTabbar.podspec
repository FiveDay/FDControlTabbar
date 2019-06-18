#
#  Be sure to run `pod spec lint FDControlTabbar.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "FDControlTabbar"
  s.version      = "0.0.1"
  s.summary      = "A usefull TabbarControl named FDControlTabbar."

  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description  = <<-DESC
                    FDControlTabbar contains lots of features for developer.
                   DESC

  s.homepage     = "https://github.com/FiveDay/FDControlTabbar"

  s.license      = "MIT"


   s.author             = { "zhangyu" => "fortystreet@163.com" }

   s.platform     = :ios

   s.ios.deployment_target = '8.0'


  s.source       = { :git => "https://github.com/FiveDay/FDControlTabbar.git", :tag => "#{s.version}" }


  s.source_files  = "FDControlTabbar/FDControlTabbar/**/*.{h,m,mm,c,cpp,swift}"
  s.exclude_files = "FDControlTabbar/FDControlTabbar/Info.plist"

  s.public_header_files = "FDControlTabbar/FDControlTabbar/FDControlTabbar.h","FDControlTabbar/FDControlTabbar/Control/TabBar/UITabBarController+FDTabBarController.h","FDControlTabbar/FDControlTabbar/Control/TabBar/UITabBarItem+FDTabBar.h","FDControlTabbar/FDControlTabbar/Control/TabBar/FDTabBar.h" 

  s.requires_arc = true


end
