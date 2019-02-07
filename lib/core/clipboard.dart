import 'dart:async';
import 'package:flutter/services.dart';


class ClipboardService {
  static void onClipboardData(RegExp reg, Function callback) {
    Timer timer;

    timer = new Timer(new Duration(seconds: 10), () async {
      final data = await Clipboard.getData('text/plain');
      if (reg.hasMatch(data.text)) {
        callback(data.text);
        timer?.cancel();
        timer = null;
      }
    });
  }
}