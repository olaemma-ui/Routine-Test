import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/theme/app_colors.dart';
import 'app_typography.dart';

class ThemeHelpers {
  static ButtonStyle textButtonStyle() => TextButton.styleFrom(
    padding: EdgeInsets.zero,
    minimumSize: Size(40, 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );

  /// Returns a [ButtonStyle] for primary buttons.
  ///
  /// - [backgroundColor]: The color of the button when enabled.
  /// - [disabledColor]: The color of the button when disabled.
  /// - [textColor]: The color of the button's text.
  ///
  /// Applies consistent sizing, rounded corners, and uses the app's medium button typography.
  static ButtonStyle outlineButtonStyle({
    required Color textColor,
    required Color borderColor,
  }) {
    return OutlinedButton.styleFrom(
      textStyle: AppTypography.buttonMedium.copyWith(color: textColor),
      side: BorderSide(color: borderColor, width: 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DesignConstants.borderRadiusXL),
      ),
      minimumSize: const Size(double.infinity, DesignConstants.buttonHeight),
    );
  }

  /// Returns a [ButtonStyle] for primary buttons.
  ///
  /// - [backgroundColor]: The color of the button when enabled.
  /// - [disabledColor]: The color of the button when disabled.
  /// - [textColor]: The color of the button's text.
  ///
  /// Applies consistent sizing, rounded corners, and uses the app's medium button typography.
  static ButtonStyle primaryButtonStyle({
    required Color backgroundColor,
    required Color disabledColor,
    required Color textColor,
  }) {
    return FilledButton.styleFrom(
      backgroundColor: backgroundColor,
      disabledBackgroundColor: disabledColor,
      textStyle: AppTypography.buttonMedium.copyWith(color: textColor),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DesignConstants.borderRadiusXL),
      ),
      minimumSize: const Size(double.infinity, DesignConstants.buttonHeight),
    );
  }

  /// Returns an [InputDecorationTheme] for text fields.
  ///
  /// - [border]: The color used for the border and fill of the input field.
  /// - [textHint]: The color for label and hint text.
  ///
  /// Sets padding, rounded borders, and applies the app's medium text style for hints and labels.
  static InputDecorationTheme inputDecoration({
    required Color border,
    required Color textHint,
    required Color focusedBorder,
  }) {
    return InputDecorationTheme(
      hintStyle: AppTypography.textMedium.copyWith(color: textHint),
      // fillColor: border,
      // filled: true,
      // contentPadding: const EdgeInsets.symmetric(
      //   horizontal: 20,
      //   vertical: 16,
      // ).copyWith(top: 8),
      border: _outlineInputBorder(border),
      enabledBorder: _outlineInputBorder(border),
      focusedBorder: _outlineInputBorder(focusedBorder),
    );
  }

  /// Helper method to create an [OutlineInputBorder] with a given color.
  ///
  /// - [color]: The border color.
  ///
  /// Used internally for consistent input field borders.
  static OutlineInputBorder _outlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(DesignConstants.borderRadiusXL),
      borderSide: BorderSide(color: color, width: 1),
    );
  }

  /// Returns a [ChipThemeData] for action chips.
  ///
  /// - [backgroundColor]: The chip's background color.
  /// - [disabledColor]: The chip's color when disabled.
  /// - [labelColor]: The color of the chip's label text.
  ///
  /// Applies padding, rounded corners, and uses the app's small text style for labels.
  static ChipThemeData actionChipTheme({
    required Color backgroundColor,
    required Color disabledColor,
    required Color labelColor,
    required Color borderColor,
  }) {
    return ChipThemeData(
      backgroundColor: Colors.transparent,
      disabledColor: disabledColor,
      selectedColor: backgroundColor,
      side: BorderSide(color: borderColor, width: 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DesignConstants.borderRadiusXL),
      ),
      // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      labelStyle: AppTypography.textSmall.copyWith(color: labelColor),
      secondaryLabelStyle: AppTypography.textSmall.copyWith(color: labelColor),
      brightness: Brightness.light,
    );
  }

  /// Returns a [CheckboxThemeData] for customizing checkboxes.
  ///
  /// - [activeColor]: The color of the checkbox when checked.
  /// - [checkColor]: The color of the check icon.
  /// - [borderRadius]: The border radius for the checkbox shape (default is 4).
  ///
  /// Applies rounded corners and custom colors for checked state and check icon.
  static CheckboxThemeData checkboxTheme({
    required Color activeColor,
    required Color checkColor,
    double borderRadius = 4,
  }) {
    return CheckboxThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      side: BorderSide(color: AppColor.defaultBorderDark),
      checkColor: WidgetStateProperty.all(checkColor),
      fillColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) return AppColor.primary;
        return null;
      }),
    );
  }

  /// Returns a [CardTheme] for customizing cards.
  ///
  /// - [color]: The background color of the card.
  /// - [radius]: The border radius for the card's corners (default is 8).
  ///
  /// Applies rounded corners and custom elevation for card widgets.
  static CardThemeData cardTheme({
    required Color color,
    required Color borderColor,
    double radius = 8,
  }) {
    return CardThemeData(
      color: color,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: BorderSide(color: borderColor, width: 1),
      ),
    );
  }
}
