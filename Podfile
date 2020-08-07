# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'
install! 'cocoapods', :generate_multiple_pod_projects => true

target 'DI' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'DIAppContext', :path=> './DI/DevPods/DIAppContext'
  pod 'FeatureService',    :path => './DI/DevPods/FeatureService/'
  
  pod 'Feature1',    :path => './DI/DevPods/Feature1/'
  pod 'Feature2',    :path => './DI/DevPods/Feature2/', :testspecs => ['Tests']
  pod 'Feature3',    :path => './DI/DevPods/Feature3/'
  pod 'UserSession',    :path => './DI/DevPods/UserSession/'
  pod 'User',    :path => './DI/DevPods/User/'
  
  pod 'DIContainer',    :path => './DI/DevPods/DIContainer/'
  
  target 'DITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
