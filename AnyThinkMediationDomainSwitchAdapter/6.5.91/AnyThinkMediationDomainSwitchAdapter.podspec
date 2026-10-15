#
# Be sure to run `pod lib lint AnyThinkMediationDomainSwitchAdapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AnyThinkMediationDomainSwitchAdapter'
  s.version          = '6.5.91'
  s.summary          = 'AnyThinkMediationDomainSwitchAdapter used for mediation with the TopOn SDK'

  s.description      = <<-DESC
     TopOn SDK for developer
                       DESC

  s.homepage = 'https://github.com/CocoaPods/Specs/search?o=desc&q=AnyThinkMediationDomainSwitchAdapter&s=indexed'
  s.author = { 'topon' => 'mct-js@toponad.com' }
  s.license = { :type => "MIT", :file => "AnyThinkDomainSwitchAdapter-#{s.version}/LICENSE" }

  s.ios.deployment_target = '13.0'
  s.static_framework = true
  s.requires_arc = true
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => ['-lObjC'],
    'VALID_ARCHS' => 'x86_64 armv7 armv7s arm64'
  }

  s.source = {
    :http => "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkDomainSwitchAdapter/#{s.version}/AnyThinkDomainSwitchAdapter-#{s.version}.zip",
    :type => 'zip'
  }
  s.vendored_frameworks = "AnyThinkDomainSwitchAdapter-#{s.version}/AnyThinkDomainSwitchAdapter.xcframework"

  s.dependency 'AnyThinkiOS','6.5.91'

  
end
