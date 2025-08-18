import 'package:flutter/material.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';

class AppTypography {
  static const String fontFamily = 'Manrope';

  // Display / large
  static TextStyle displayLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 42.ffem,
    fontWeight: FontWeight.bold,
    height: (48 / 40).ffem,
    letterSpacing: 0.16.ffem,
  );

  // Display / medium
  static TextStyle displayMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 26.ffem,
    fontWeight: FontWeight.w500,
    height: (32 / 24).ffem,
    letterSpacing: 0.16.ffem,
  );

  // Display / small
  static TextStyle displaySmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 22.ffem,
    fontWeight: FontWeight.w600,
    height: (24 / 20).ffem,
    letterSpacing: 0.16.ffem,
  );

  // Text / extra large
  static TextStyle textExtraLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 20.ffem,
    fontWeight: FontWeight.w500,
    height: (24 / 18).ffem,
    letterSpacing: 0,
  );

  // Text / large
  static TextStyle textLarge = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18.ffem,
    fontWeight: FontWeight.w400,
    height: (24 / 16).ffem,
    letterSpacing: 0.16.ffem,
  );

  // Text / medium
  static TextStyle textMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.ffem,
    fontWeight: FontWeight.w400,
    height: (20 / 14).ffem,
    letterSpacing: -0.02.ffem,
  );

  // Text / small
  static TextStyle textSmall = TextStyle(
    fontFamily: fontFamily,
    fontSize: 14.ffem,
    fontWeight: FontWeight.w500,
    height: (16 / 12).ffem,
    letterSpacing: 0,
  );

  // Button / medium
  static TextStyle buttonMedium = TextStyle(
    fontFamily: fontFamily,
    fontSize: 16.ffem,
    fontWeight: FontWeight.w500,
    height: (24 / 14).ffem,
    letterSpacing: 0.16.ffem,
  );
}
