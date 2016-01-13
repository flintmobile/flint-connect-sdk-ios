Pod::Spec.new do |s|
  s.name             = "FlintConnectSDK"
  s.version          = "0.0.2-beta"
  s.summary          = "Flint Payment SDK"
  s.homepage         = "https://github.com/flintmobile/iOS-Podspec"
  s.license          = 'Flint Copyright'
  s.author           = { "Flint Mobile" => "appledev@flint.com" }
  s.source           = { :http => "https://github.com/flintmobile/ios-flint-connect-sdk/blob/master/beta/FlintConnectSDK.framework.zip?raw=true" }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = "**/*.h"
  s.resource_bundles = { 'FlintConnect' => ['Framework/FlintConnect/FlintConnect/Resource'] }
  s.frameworks = 'FlintConnectSDK', 'CoreTelephony', 'Security', 'CoreLocation', 'SystemConfiguration'
  s.libraries = 'z'
  s.vendored_frameworks = 'FlintConnectSDK.framework'
  s.module_name = 'FlintConnectSDK'
end
