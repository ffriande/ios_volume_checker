#import "IosVolumeCheckerPlugin.h"
#if __has_include(<ios_volume_checker/ios_volume_checker-Swift.h>)
#import <ios_volume_checker/ios_volume_checker-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ios_volume_checker-Swift.h"
#endif

@implementation IosVolumeCheckerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIosVolumeCheckerPlugin registerWithRegistrar:registrar];
}
@end
