#
# Be sure to run `pod lib lint AnyThinkIronSourceAdapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
  spec.name         = "AnyThinkiOS"
  spec.version      = "6.5.91"
  spec.summary      = "A short description of AnyThink SDK for iOS."
  spec.description  = <<-DESC
            TopOn SDK for developer
                   DESC
  spec.homepage     = "https://github.com/AnyThinkteam/sdk_ios_cocoapod"
  spec.license      = { :type => "MIT", :file => "AnyThinkSDK-#{spec.version}/LICENSE" }
  spec.author       = { "topon" => "developer@toponad.com" }
  spec.source       = { :http => "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkSDK/#{spec.version}/AnyThinkSDK-#{spec.version}.zip" }
  spec.ios.deployment_target = '10.0'
  spec.static_framework = false
  spec.requires_arc = true
  spec.frameworks = 'SystemConfiguration', 'CoreGraphics','Foundation','UIKit'
  
  spec.pod_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}
  spec.libraries = 'c++', 'z', 'sqlite3', 'xml2', 'resolv'
  spec.default_subspecs = 'AnyThinkSDK'
  spec.swift_version = '5.0'
  spec.pod_target_xcconfig =
  {
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'arm64 arm64e x86_64'
  }

  spec.subspec 'AnyThinkSDK' do |ss|
    ss.ios.deployment_target = '10.0'
    ss.vendored_frameworks = "AnyThinkSDK-#{spec.version}/AnyThinkSDK.xcframework"
  end
end
