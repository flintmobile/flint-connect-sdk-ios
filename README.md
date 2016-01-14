#ios-flint-connect-sdk
The framework to integrate Flint Payment Solution into your app.

###Manual Integration
- Download the FlintConnectSDK.framework.zip
- Unzip it
- Add it as an embeded framework on the project that suppport iOS 8+
- Import <FlintConnectSDK/FlintConnectSDK.h> where you need to use the framework

###Cocoapod integration
In your Podfile include the source
```
source 'https://github.com/flintmobile/ios-flint-connect-sdk.git'
```
Then add the FlintConnectSDK
```
pod 'FlintConnectSDK'
```
If you are also using other public pods (e.g. AFNetworking), you will need to include
```
source 'https://github.com/CocoaPods/Specs.git'
```

###Bitcode Support
Currently we are not yet support bit code due to a library dependency. So the work around is disable bitcode for your project if you are using manual integration
If you use cocoa pod, the snippet bellow disable bitcode when integrate our framework
```
post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
    end
  end
end
```
