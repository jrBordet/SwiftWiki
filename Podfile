source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target 'SwiftWiki' do

  pod 'AlamofireObjectMapper', '~> 4.0'
  pod 'RxSwift', '3.0'
  pod 'RxCocoa',    '~> 3.0'
  
  target 'SwiftWikiTests' do
      inherit! :search_paths
      pod 'Quick'
      pod 'Nimble'
      
      pod 'RxBlocking', '~> 3.0'
      pod 'RxTest',     '~> 3.0'
  end
  
  target 'SwiftWikiUITests' do
      inherit! :search_paths
  end

end

