# Uncomment the next line to define a global platform for your project
platform :ios, '10.0'
install! 'cocoapods', :generate_multiple_pod_projects => true

target 'DI' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  pod 'AppContext', :path=> './DI/DevPods/AppContext'
  pod 'Services',    :path => './DI/DevPods/Services/'
  
  pod 'Feature1',    :path => './DI/DevPods/Feature1/'
  pod 'Feature2',    :path => './DI/DevPods/Feature2/', :testspecs => ['Tests']
  pod 'Feature3',    :path => './DI/DevPods/Feature3/'
  pod 'Feature4',    :path => './DI/DevPods/Feature4/'
  
  pod 'DIContainer',    :path => './DI/DevPods/DIContainer/'
  pod 'Swinject', '2.7.1'
  
  target 'DITests' do
    inherit! :search_paths
    # Pods for testing
  end
end
