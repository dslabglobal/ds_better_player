import 'package:flutter_test/flutter_test.dart';
import 'package:ds_better_player/ds_better_player.dart';
import 'package:ds_better_player/ds_better_player_platform_interface.dart';
import 'package:ds_better_player/ds_better_player_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockDsBetterPlayerPlatform
    with MockPlatformInterfaceMixin
    implements DsBetterPlayerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final DsBetterPlayerPlatform initialPlatform = DsBetterPlayerPlatform.instance;

  test('$MethodChannelDsBetterPlayer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelDsBetterPlayer>());
  });

  test('getPlatformVersion', () async {
    DsBetterPlayer dsBetterPlayerPlugin = DsBetterPlayer();
    MockDsBetterPlayerPlatform fakePlatform = MockDsBetterPlayerPlatform();
    DsBetterPlayerPlatform.instance = fakePlatform;

    expect(await dsBetterPlayerPlugin.getPlatformVersion(), '42');
  });
}
