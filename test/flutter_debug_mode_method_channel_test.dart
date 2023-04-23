import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_debug_mode/flutter_debug_mode_method_channel.dart';

void main() {
  MethodChannelFlutterDebugMode platform = MethodChannelFlutterDebugMode();
  const MethodChannel channel = MethodChannel('flutter_debug_mode');

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
