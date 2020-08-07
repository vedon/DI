#
# Be sure to run `pod lib lint Feature2.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Feature2'
  s.version          = '0.1.0'
  s.summary          = 'A short description of Feature2.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/vedon/Feature2'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vedon' => 'fuweidong@bytedance.com' }
  s.source           = { :git => 'https://github.com/vedon/Feature2.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'Feature2/Classes/**/*'
  s.dependency 'Services'
  
  # s.resource_bundles = {
  #   'Feature2' => ['Feature2/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
   
  s.test_spec 'Tests' do |test_spec|
    test_spec.source_files = 'Feature2/Tests/**/*.{swift}'
#    test_spec.requires_app_host = true
    s.dependency 'Services'
#    s.dependency 'DIAppContext'
  end
  
end
