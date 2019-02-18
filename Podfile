target 'DemoImageViewer' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

 platform :ios, '12.1'

 #pod 'TIImageViewer', :git => 'https://github.com/toddisaacs/TIImageViewer.git', :tag => 'v1.2.0'
  pod 'TIImageViewer', :path => '/Users/toddisaacs/ios/TIImageViewer'
  
  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '4.0'
      end
    end
  end

end
