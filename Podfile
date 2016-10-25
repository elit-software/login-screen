use_frameworks!

def appDependencies
    pod 'Alamofire', '~> 4.0'
    pod 'SwiftyJSON'
end

target 'Login' do
    platform :ios, '9.0'
    appDependencies
end

target 'Login macOS' do
    platform :osx, '10.11'
    appDependencies
end

target 'LoginTests' do

end

target 'LoginUITests' do

end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
