#
# Be sure to run `pod lib lint Neumorphic.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Neumorphic'
  s.version          = '0.1.0'
  s.summary          = 'it is a premade neumorphic design lib, you can use it by just neumorphic class name'

#  This description is used to generate tags and improve search results.
#  * Think: What does it do? Why did you write it? What is the focus?
#  * Try to keep it short, snappy and to the point.
#  * Write the description between the DESC delimiters below.
#  * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: it is a premade neumorphic design lib, you can use it by just neumorphic class name
views name will be like this:
1. SYNeumorphicView
2. SYNeumorphicButton
3. SYNeumorphicTableCell
...
.
                       DESC

  s.homepage         = 'https://github.com/SomuYadav/Neumorphic'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'SomuYadav' => 'somendra.sy@gmail.com' }
  s.source           = { :git => 'https://github.com/SomuYadav/Neumorphic.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = 'Neumorphic/Classes/**/*'
  
  # s.resource_bundles = {
  #   'Neumorphic' => ['Neumorphic/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
