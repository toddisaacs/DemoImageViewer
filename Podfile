target 'DemoImageViewer' do
  # Comment this line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for TICircleProgressView
  #pod 'TICircleProgress', :git => 'https://github.com/toddisaacs/TICircleProgress.git', :tag => '1.0.0'
  pod 'TIImageViewer', :git => 'https://github.com/toddisaacs/TIImageViewer.git', :tag => '1.0.0'

  post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '3.0'
      end
    end
  end

end
