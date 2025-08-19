part of '../app_theme.dart';

abstract class _DarkTheme {
  static get themeData => ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColor.darkBackground,
    shadowColor: AppColor.selectedDark,
    primaryColor: AppColor.primary,
    cardColor: AppColor.selectedDark,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.darkBackground,
      elevation: 0,
    ),

    unselectedWidgetColor: AppColor.iconTertiaryDark,
    iconTheme: IconThemeData(color: AppColor.iconPrimaryDark),

    textTheme: TextTheme(
      displayLarge: AppTypography.displayLarge.copyWith(
        color: AppColor.textInvert,
      ),
      displayMedium: AppTypography.displayMedium.copyWith(
        color: AppColor.textInvert,
      ),
      titleMedium: AppTypography.displaySmall.copyWith(
        color: AppColor.textInvert,
      ),
      bodyLarge: AppTypography.textLarge.copyWith(color: AppColor.textInvert),
      bodyMedium: AppTypography.textMedium.copyWith(color: AppColor.textInvert),
      bodySmall: AppTypography.textSmall.copyWith(color: AppColor.textInvert),
      labelLarge: AppTypography.buttonMedium.copyWith(
        color: AppColor.textInvert,
      ),
    ),
    dialogTheme: DialogThemeData(backgroundColor: AppColor.darkBackground),

    dividerTheme: DividerThemeData(color: AppColor.defaultBorderDark),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ThemeHelpers.outlineButtonStyle(
        textColor: AppColor.textInvert,
        borderColor: AppColor.defaultBorderDark,
      ),
    ),

    inputDecorationTheme: ThemeHelpers.inputDecoration(
      border: AppColor.defaultBorderDark,
      focusedBorder: AppColor.focusInputBorderDark,
      textHint: AppColor.textDefaultDark,
    ),

    textButtonTheme: TextButtonThemeData(style: ThemeHelpers.textButtonStyle()),

    filledButtonTheme: FilledButtonThemeData(
      style: ThemeHelpers.primaryButtonStyle(
        backgroundColor: AppColor.primary,
        disabledColor: AppColor.disabledDark,
        textColor: AppColor.textPrimary,
      ),
    ),

    chipTheme: ThemeHelpers.actionChipTheme(
      backgroundColor: AppColor.selectedDark,
      disabledColor: AppColor.disabledDark,
      labelColor: AppColor.textInvert,
      borderColor: AppColor.defaultBorderDark,
    ),

    checkboxTheme: ThemeHelpers.checkboxTheme(
      activeColor: AppColor.black,
      checkColor: AppColor.black,
    ),

    cardTheme: ThemeHelpers.cardTheme(
      radius: DesignConstants.borderRadiusM,
      color: Colors.transparent,
      borderColor: AppColor.defaultBorderDark,
    ),

    bottomAppBarTheme: BottomAppBarTheme(height: 60, color: Colors.transparent),
  );
}
