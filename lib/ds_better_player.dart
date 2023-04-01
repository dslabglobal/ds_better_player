
import 'ds_better_player_platform_interface.dart';

class DsBetterPlayer {
  Future<String?> getPlatformVersion() {
    return DsBetterPlayerPlatform.instance.getPlatformVersion();
  }
}
