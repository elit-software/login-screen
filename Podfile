inhibit_all_warnings!

def appDependencies
    pod 'Alamofire'
end

target 'Login' do
    platform :ios, '9.0'
    appDependencies
    target 'LoginTests' do
        inherit! :search_paths
    end
end

target 'Login macOS' do
    platform :osx, '10.11'
    appDependencies
end

post_install do |installer|
    installer.pods_project.build_configurations.each do |config|
        if config.name == 'Release'
            config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'
            else
            config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Onone'
        end
    end
end
