import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_debug_mode_method_channel.dart';

abstract class FlutterDebugModePlatform extends PlatformInterface {
  /// Constructs a FlutterDebugModePlatform.
  FlutterDebugModePlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterDebugModePlatform _instance = MethodChannelFlutterDebugMode();

  /// The default instance of [FlutterDebugModePlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterDebugMode].
  static FlutterDebugModePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterDebugModePlatform] when
  /// they register themselves.
  static set instance(FlutterDebugModePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
