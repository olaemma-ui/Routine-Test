import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/theme/app_colors.dart';
import 'package:todo_app/core/theme/app_typography.dart';
import 'package:todo_app/core/theme/theme_helper.dart';

part 'modes/dark_theme.dart';
part 'modes/light_theme.dart';

abstract class AppTheme {
  static final darkMode = _DarkTheme.themeData;
  static final lightMode = _LightTheme.themeData;
}
