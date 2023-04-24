import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_debug_mode/flutter_debug_mode.dart';
import 'package:flutter_debug_mode/flutter_debug_mode_platform_interface.dart';
import 'package:flutter_debug_mode/flutter_debug_mode_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterDebugModePlatform
    with MockPlatformInterfaceMixin
    implements FlutterDebugModePlatform {

  @override
  Future<bool> isDebugMode() => Future.value(false);
}

void main() {
  final FlutterDebugModePlatform initialPlatform = FlutterDebugModePlatform.instance;

  test('$MethodChannelFlutterDebugMode is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterDebugMode>());
  });

  test('getPlatformVersion', () async {
    FlutterDebugMode flutterDebugModePlugin = FlutterDebugMode();
    MockFlutterDebugModePlatform fakePlatform = MockFlutterDebugModePlatform();
    FlutterDebugModePlatform.instance = fakePlatform;

    expect(await flutterDebugModePlugin.isDebugMode(), '42');
  });
}
