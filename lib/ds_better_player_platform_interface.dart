import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'ds_better_player_method_channel.dart';

abstract class DsBetterPlayerPlatform extends PlatformInterface {
  /// Constructs a DsBetterPlayerPlatform.
  DsBetterPlayerPlatform() : super(token: _token);

  static final Object _token = Object();

  static DsBetterPlayerPlatform _instance = MethodChannelDsBetterPlayer();

  /// The default instance of [DsBetterPlayerPlatform] to use.
  ///
  /// Defaults to [MethodChannelDsBetterPlayer].
  static DsBetterPlayerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DsBetterPlayerPlatform] when
  /// they register themselves.
  static set instance(DsBetterPlayerPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
