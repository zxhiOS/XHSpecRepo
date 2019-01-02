#
# Be sure to run `pod lib lint XHCategories.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XHCategories'
  s.version          = '0.1.2'
  s.summary          = 'A short description of XHCategories.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                   一个简单的分类.
                       DESC

  s.homepage         = 'https://github.com/zxhiOS/XHCategories'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zxhiOS' => '997600269@qq.com' }
  s.source           = { :git => 'https://github.com/zxhiOS/XHCategories.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  #s.source_files = 'XHCategories/Classes/**/*'
  
  s.subspec 'Fundation' do |fundation|
      
      fundation.source_files = 'XHCategories/Classes/Fundation/**/*'
      
      #networkEngine.public_header_files = 'XHCategories/Classes/Fundation/**/*.h'
      
  end
  
  s.subspec 'UIKit' do |uiKit|
      
      uiKit.source_files = 'XHCategories/Classes/UIKit/**/*'
      
      uiKit.public_header_files = 'XHCategories/Classes/UIKit/**/*.h'
      uiKit.dependency 'XHCategories/Fundation'
      
  end
  
  # s.resource_bundles = {
  #   'XHCategories' => ['XHCategories/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  #s.dependency 'Masonry', '~> 0.6.4'
end
