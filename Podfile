platform :ios, '10.0'
use_frameworks!

workspace 'FachriApp'

def core_pods
  pod 'Charts', '3.2.1'
end

def account_pods
  core_pods
end

def pods
  core_pods
  pod 'Alamofire', '4.8.1'
end

def test_helper_pods
  pod 'Quick', '2.1.0'
  pod 'Nimble', '8.0.1'
  pod 'Cuckoo', '1.0.3'
  pods
end

target 'FachriApp' do
  use_frameworks!
  pods

  target 'FachriAppTests' do
    inherit! :search_paths
    test_helper_pods
  end

end


target 'Core' do
  project 'Core/Core.xcodeproj'
  core_pods
  
  target 'CoreTests' do
    inherit! :search_paths
    test_helper_pods
  end
end

target 'Account' do
  project 'Account/Account.xcodeproj'
  account_pods
  
  target 'AccountTests' do
    inherit! :search_paths
    test_helper_pods
  end
end