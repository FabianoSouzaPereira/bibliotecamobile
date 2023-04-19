import 'package:flutter/material.dart';

class AppColors {
  static const Color purpleDark = Color(0xFF170E2B);
  static const Color gray = Color(0xFF868686);
  static const Color lightGray = Color(0xFFD9D9D9);
  static const Color solidBlue = Color(0XFF004BA0);

  static const Color fontColorTitleLightTheme = Color(0XFF170E2B);

  static Color textFieldContentColor(Color? fillColor) {
    if (fillColor == null) {
      return Colors.black;
    } else {
      return Colors.white;
    }
  }
}
