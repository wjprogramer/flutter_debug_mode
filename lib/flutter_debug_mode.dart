
import 'flutter_debug_mode_platform_interface.dart';

class FlutterDebugMode {
  Future<bool> isDebugMode() {
    return FlutterDebugModePlatform.instance.isDebugMode();
  }
}
