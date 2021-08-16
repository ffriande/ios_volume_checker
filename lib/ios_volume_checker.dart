
import 'dart:async';

import 'package:flutter/services.dart';

class IosVolumeChecker {
  static const MethodChannel _channel =
      const MethodChannel('ios_volume_checker');

  //get the current volume from system
  static Future<double> get volume async {
    final double vol = await _channel.invokeMethod('getVolume');
    return vol;
  }
}
