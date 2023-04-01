import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ds_better_player/ds_better_player_method_channel.dart';

void main() {
  MethodChannelDsBetterPlayer platform = MethodChannelDsBetterPlayer();
  const MethodChannel channel = MethodChannel('ds_better_player');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
