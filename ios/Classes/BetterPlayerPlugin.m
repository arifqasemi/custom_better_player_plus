#import "BetterPlayerPlugin.h"
#if __has_include(<custom_better_player_plus/custom_better_player_plus-Swift.h>)
#import <custom_better_player_plus/custom_better_player_plus-Swift.h>
#else
#import "custom_better_player_plus-Swift.h"
#endif

@implementation BetterPlayerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBetterPlayerPlugin registerWithRegistrar:registrar];
}
@end
