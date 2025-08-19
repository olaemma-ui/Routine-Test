import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_typography.dart';

/// A dialog widget that asks the user to confirm logging out of the application.
///
/// Displays a title, a message, and two buttons: "No" (outlined) and "Yes" (filled).
/// The "No" button closes the dialog, while the "Yes" button triggers the [onConfirm] callback.
class ConfirmLDialog extends StatelessWidget {
  final VoidCallback? onConfirm;
  final String title;
  final String body;
  final String? confirmText;
  final String? cancelText;

  const ConfirmLDialog({
    super.key,
    this.onConfirm,
    required this.title,
    required this.body,
    this.confirmText,
    this.cancelText,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: AppTypography.displaySmall,
              textAlign: TextAlign.center,
            ),
            Gap(16.fem),
            Text(
              body,
              style: AppTypography.textMedium,
              textAlign: TextAlign.center,
            ),
            Gap(40.fem),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      cancelText ?? 'No',
                      style: AppTypography.textMedium,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: FilledButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      if (onConfirm != null) onConfirm!();
                    },
                    child: Text(
                      confirmText ?? 'Yes',
                      style: AppTypography.textMedium,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
