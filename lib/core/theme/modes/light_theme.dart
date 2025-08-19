part of '../app_theme.dart';

abstract class _LightTheme {
  static get themeData => ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppColor.lightBackground,
    primaryColor: AppColor.primary,
    cardColor: AppColor.selectedLight,
    shadowColor: AppColor.selectedLight,

    appBarTheme: AppBarTheme(
      backgroundColor: AppColor.lightBackground,
      elevation: 0,
    ),

    unselectedWidgetColor: AppColor.iconTertiaryLight,
    iconTheme: IconThemeData(color: AppColor.iconPrimaryLight),

    textTheme: TextTheme(
      displayLarge: AppTypography.displayLarge.copyWith(
        color: AppColor.textPrimary,
      ),
      displayMedium: AppTypography.displayMedium.copyWith(
        color: AppColor.textPrimary,
      ),
      titleMedium: AppTypography.displaySmall.copyWith(
        color: AppColor.textPrimary,
      ),

      bodyLarge: AppTypography.textLarge.copyWith(color: AppColor.textPrimary),
      bodyMedium: AppTypography.textMedium.copyWith(
        color: AppColor.textPrimary,
      ),
      bodySmall: AppTypography.textSmall.copyWith(color: AppColor.textPrimary),

      labelLarge: AppTypography.buttonMedium.copyWith(
        color: AppColor.textPrimary,
      ),
    ),

    dialogTheme: DialogThemeData(backgroundColor: AppColor.lightBackground),

    dividerTheme: DividerThemeData(color: AppColor.defaultBorderLight),

    inputDecorationTheme: ThemeHelpers.inputDecoration(
      border: AppColor.defaultBorderLight,
      focusedBorder: AppColor.focusInputBorderLight,
      textHint: AppColor.textDefaultLight,
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: ThemeHelpers.outlineButtonStyle(
        textColor: AppColor.textPrimary,
        borderColor: AppColor.defaultBorderLight,
      ),
    ),

    filledButtonTheme: FilledButtonThemeData(
      style: ThemeHelpers.primaryButtonStyle(
        backgroundColor: AppColor.primary,
        disabledColor: AppColor.disabledDark,
        textColor: AppColor.textPrimary,
      ),
    ),

    chipTheme: ThemeHelpers.actionChipTheme(
      backgroundColor: AppColor.selectedLight,
      disabledColor: AppColor.disabledLight,
      labelColor: AppColor.textPrimary,
      borderColor: AppColor.defaultBorderLight,
    ),

    checkboxTheme: ThemeHelpers.checkboxTheme(
      activeColor: AppColor.black,
      checkColor: AppColor.white,
    ),

    cardTheme: ThemeHelpers.cardTheme(
      radius: DesignConstants.borderRadiusM,
      color: Colors.transparent,
      borderColor: AppColor.defaultBorderLight,
    ),

    bottomAppBarTheme: BottomAppBarTheme(height: 60, color: Colors.transparent),
  );
}
