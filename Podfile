inhibit_all_warnings!

def appDependencies
    pod 'Alamofire'
    pod 'SwiftyJSON'
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
