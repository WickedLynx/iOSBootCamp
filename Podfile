use_frameworks!
workspace 'TooDoApp.xcworkspace'

source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '8.0'


def common_pods
    pod 'Alamofire', '~> 3.4.1'
    pod 'ObjectMapper', '~> 1.3.0'
    pod 'AlamofireObjectMapper', '~> 3.0'
    pod 'Swinject', '~> 1.1.0'
end

def common_test_pods
    pod 'Quick', '~> 0.8'
    pod 'Nimble', '~> 3.0'
    pod 'FBSnapshotTestCase'
    pod 'Nimble-Snapshots'
    pod 'MockFive'
end

target 'TooDoApp' do
    project "TooDoApp/TooDoApp.xcodeproj"
    common_pods
end


target 'TooDoAppTests' do
    project "TooDoApp/TooDoApp.xcodeproj"
    common_test_pods
end


target 'TooDoAppUITests' do
    project "TooDoApp/TooDoApp.xcodeproj"
    common_test_pods
end
