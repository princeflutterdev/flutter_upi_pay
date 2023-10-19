#import "UpiPayPlugin.h"
#if __has_include(<flutter_upi_india/flutter_upi_india-Swift.h>)
#import <flutter_upi_india/flutter_upi_india-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flutter_upi_india-Swift.h"
#endif

@implementation UpiPayPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftUpiPayPlugin registerWithRegistrar:registrar];
}
@end
