import 'package:flutter/material.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/theme/app_colors.dart';
import 'package:todo_app/core/theme/app_typography.dart';

class AppSnackbar extends StatelessWidget {
  final String message;
  final Color? backgroundColor;
  const AppSnackbar({super.key, required this.message, this.backgroundColor});

  SnackBar buildSnackBar(BuildContext context) {
    return SnackBar(
      content: Text(
        message,
        style: AppTypography.textMedium.copyWith(color: AppColor.textInvert),
      ),
      margin: const EdgeInsets.all(DesignConstants.borderRadiusXL),
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      backgroundColor: backgroundColor ?? AppColor.error,
    );
  }

  @override
  Widget build(BuildContext context) {
    return buildSnackBar(context);
  }
}
