import 'package:flutter/material.dart';

class SizeConfig {
  static late double fem;
  static late double ffem;

  static void init(BuildContext context, {double designWidth = 414}) {
    final screenWidth = MediaQuery.of(context).size.width;
    fem = screenWidth / designWidth;
    ffem = fem * 0.98;
  }
}
