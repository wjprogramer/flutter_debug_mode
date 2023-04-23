
import 'flutter_debug_mode_platform_interface.dart';

class FlutterDebugMode {
  Future<String?> getPlatformVersion() {
    return FlutterDebugModePlatform.instance.getPlatformVersion();
  }
}
