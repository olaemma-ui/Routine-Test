import 'package:flutter/material.dart';

class AppColor {
  /// Primary color base value (used for swatch)
  static const int primaryColorValue = 0xFF6B58D9;

  //========================//
  //       Primary Colors
  //========================//
  static const Color primary = Color(primaryColorValue);

  //========================//
  //      Neutral Colors
  //========================//
  static const Color white = Color(0xFFFDFCFF);
  static const Color black = Color(0xFF111827);

  //========================//
  //      Background
  //========================//
  static const Color lightBackground = Color(0xFFFDFCFF);
  static const Color darkBackground = Color(0xFF0F0F0F);

  //========================//
  //      Selected Colors
  //========================//
  static const Color selectedLight = Color(0xFFE8E7F0);
  static const Color selectedDark = Color(0xFF37383A);

  //========================//
  //      Disabled Colors
  //========================//
  static const Color disabledLight = Color(0xFFC8C8C9);
  static const Color disabledDark = Color(0xFF222124);

  //========================//
  //      Error Colors
  //========================//
  static const Color error = Color(0xFFE03137);

  //========================//
  //       Icon Colors
  //========================//
  static const Color iconTertiaryLight = Color(0xFF7D7D80);
  static const Color iconPrimaryLight = Color(0xFF000000);

  static const Color iconTertiaryDark = Color(0xFF7D7D80);
  static const Color iconPrimaryDark = Color(0xFFFFFFFF);

  //========================//
  //       Text Colors
  //========================//
  static const Color textPrimary = Color(0xFF212121);
  static const Color textInvert = Color(0xFFFFFFFF);

  static const Color textDefaultDark = Color(0xFF555558);
  static const Color textDefaultLight = Color(0xFFC8C8C9);

  //========================//
  //        Borders
  //========================//
  static const Color defaultBorderLight = Color(0xFFC8C8C9);
  static const Color defaultBorderDark = Color(0xFF555558);

  static const Color focusInputBorderLight = Color(0xFF37383A);
  static const Color focusInputBorderDark = Color(0xFFC8C8C9);

  //========================//
  //   Material Color Swatch
  //========================//
  static MaterialColor generateMaterialColor(Color color) {
    const strengths = <double>[.05];
    const swatch = <int, Color>{};
    final r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (var strength in strengths) {
      final ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        (r + ((ds < 0 ? r : (255 - r)) * ds).round()),
        (g + ((ds < 0 ? g : (255 - g)) * ds).round()),
        (b + ((ds < 0 ? b : (255 - b)) * ds).round()),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }
}
