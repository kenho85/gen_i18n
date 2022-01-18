
import 'dart:async';

import 'package:flutter/services.dart';

class GenI18n {
  static const MethodChannel _channel = MethodChannel('gen_i18n');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
