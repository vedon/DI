#
# Be sure to run `pod lib lint Feature1.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Feature1'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Feature1.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/vedon/Feature1'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vedon' => 'fuweidong@bytedance.com' }
  s.source           = { :git => 'https://github.com/vedon/Feature1.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  #s.source_files = 'Feature1/Classes/**/*'
  #s.preserve_path = 'Feature1/Module/Module.modulemap'
  #s.module_map = 'Feature1/Module/Module.modulemap'
  s.module_map = "Module.modulemap"
  s.source_files = "*/**/*.{h,m,swift}"
  
#  s.subspec 'Service' do |ss|
#    ss.source_files = 'Feature1/Classes/Service/**/*'
#  end
#
#  s.subspec 'API' do |ss|
#    ss.source_files = 'Feature1/Classes/API/**/*'
#  end
  
  # s.resource_bundles = {
  #   'Feature1' => ['Feature1/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  #s.dependency 'Feature3'
end