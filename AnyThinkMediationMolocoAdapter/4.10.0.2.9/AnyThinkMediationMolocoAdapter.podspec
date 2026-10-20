#
# Be sure to run `pod lib lint AnyThinkMolocoAdapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AnyThinkMediationMolocoAdapter'
  s.version          = '4.10.0.2.9'
  s.summary          = 'AnyThinkMolocoAdapter used for mediation with the TopOn SDK'

  s.description      = <<-DESC
     TopOn SDK for developer
                       DESC

  s.homepage = 'https://github.com/CocoaPods/Specs/search?o=desc&q=AnyThinkMolocoAdapter&s=indexed'
  s.author = { 'topon' => 'mct-js@toponad.com' }
  s.license = { :type => "MIT", :file => "AnyThinkMolocoAdapter-#{s.version}/LICENSE" }

  s.ios.deployment_target = '12.0'
  s.static_framework = true
  s.requires_arc = true
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => ['-lObjC'],
    'VALID_ARCHS' => 'x86_64 armv7 armv7s arm64'
  }

  # s.source_files = 'AnyThinkMolocoAdapter/Classes/**/*'
  s.source = {
    :http => "https://topon-sdk-release.oss-accelerate.aliyuncs.com/AnyThink_Release/iosnetwork_2/AnyThinkMolocoAdapter/#{s.version}/AnyThinkMolocoAdapter-#{s.version}.zip",
    :type => 'zip'
  }
  s.vendored_frameworks = "AnyThinkMolocoAdapter-#{s.version}/AnyThinkMolocoAdapter.xcframework"
  
  s.dependency 'AnyThinkiOS','>=6.5.60'
  s.dependency 'MolocoSDKiOS','4.10.0'

end
