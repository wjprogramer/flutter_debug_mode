import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_debug_mode_platform_interface.dart';

/// An implementation of [FlutterDebugModePlatform] that uses method channels.
class MethodChannelFlutterDebugMode extends FlutterDebugModePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_debug_mode');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
