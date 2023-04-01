import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'ds_better_player_platform_interface.dart';

/// An implementation of [DsBetterPlayerPlatform] that uses method channels.
class MethodChannelDsBetterPlayer extends DsBetterPlayerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ds_better_player');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
