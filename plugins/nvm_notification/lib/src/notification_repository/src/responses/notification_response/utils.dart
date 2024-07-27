import 'package:flutter/material.dart';

mixin ColorResponseUtils {
  Color hexCodeToColor(String str) {
    var hexCode = str;
    if (hexCode.startsWith('#')) {
      hexCode = hexCode.substring(1);
    }
    int hexColor = int.parse(hexCode, radix: 16);
    hexColor = hexColor | 0xFF000000;
    return Color(hexColor);
  }
}

mixin IconResponseUtils {
  IconData codeToIconData(String str) {
    switch (str) {
      case 'check':
        return Icons.check;
      default:
        return Icons.device_unknown;
    }
  }
}
