/*
import 'dart:async';

import 'package:flutter/services.dart';

class WindowToFront {
  static const MethodChannel _channel =
      const MethodChannel('window_to_front');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
*/
import 'dart:async';

import 'package:flutter/services.dart';

class WindowToFront {
  static const MethodChannel _channel = const MethodChannel('window_to_front');
  // Add from here
  static Future<void> activate() async {
    await _channel.invokeMethod('activate');
  }
// to here.

// Delete the getPlatformVersion getter method.
}