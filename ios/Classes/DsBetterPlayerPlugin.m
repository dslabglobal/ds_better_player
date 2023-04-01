#import "DsBetterPlayerPlugin.h"
#if __has_include(<ds_better_player/ds_better_player-Swift.h>)
#import <ds_better_player/ds_better_player-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ds_better_player-Swift.h"
#endif

@implementation DsBetterPlayerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDsBetterPlayerPlugin registerWithRegistrar:registrar];
}
@end
