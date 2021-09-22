#import "KimPlugin.h"
#if __has_include(<kim/kim-Swift.h>)
#import <kim/kim-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "kim-Swift.h"
#endif

@implementation KimPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftKimPlugin registerWithRegistrar:registrar];
}
@end
