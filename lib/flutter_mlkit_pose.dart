
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterMlkitPose {
  static const MethodChannel _channel =
      const MethodChannel('flutter_mlkit_pose');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
