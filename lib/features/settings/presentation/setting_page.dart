import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/di/injection.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_colors.dart';
import 'package:todo_app/core/theme/app_typography.dart';
import 'package:todo_app/features/settings/bloc/settings_bloc.dart';
import 'package:todo_app/routes/app_routes_names.dart';
import 'package:todo_app/widgets/dialogs/confirm_dialog.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: BlocProvider<SettingsBloc>(
        create: (context) =>
            getIt<SettingsBloc>()..add(SettingsEvent.fetchCurrentUser()),
        child: Padding(
          padding: EdgeInsets.all(DesignConstants.screenPadding),
          child: BlocConsumer<SettingsBloc, SettingsState>(
            listener: (context, state) {
              state.whenOrNull(
                loggedOut: () {
                  // navigate to home or dashboard
                  context.go(AppRoutes.welcomPage.path);
                },
              );
            },
            builder: (context, state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(50.fem),
                  state.maybeWhen(
                    userLoaded: (user) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8.fem,

                      children: [
                        Text(
                          user.userMetadata?['fullname'] ?? '',
                          style: AppTypography.textExtraLarge,
                        ),
                        Gap(2.fem),
                        Row(
                          spacing: 8,
                          children: [
                            Icon(
                              Icons.mail_rounded,
                              size: 18.ffem,
                              color: isDarkMode
                                  ? AppColor.textSecondaryDark
                                  : AppColor.textSecondaryLight,
                            ),
                            Text(
                              user.email ?? '',
                              style: AppTypography.textSmall.copyWith(
                                color: isDarkMode
                                    ? AppColor.textSecondaryDark
                                    : AppColor.textSecondaryLight,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: isDarkMode
                              ? AppColor.textSecondaryDark
                              : AppColor.textSecondaryLight,
                        ),
                      ],
                    ),
                    orElse: SizedBox.shrink,
                  ),

                  TextButton.icon(
                    style: Theme.of(context).textButtonTheme.style?.copyWith(
                      padding: WidgetStatePropertyAll(EdgeInsets.all(6)),
                      minimumSize: WidgetStatePropertyAll(
                        Size(double.infinity, 40.fem),
                      ),
                      alignment: Alignment.centerLeft,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (dialogContext) => ConfirmLDialog(
                          title: 'Log Out?',
                          body:
                              'Are your sure you want to log out '
                              'from this application?',
                          onConfirm: () {
                            context.read<SettingsBloc>().add(
                              SettingsEvent.logoutRequested(),
                            );
                          },
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.logout_rounded,
                      size: 18.ffem,
                      color: AppColor.error,
                    ),
                    label: Text(
                      'Log Out',
                      style: AppTypography.buttonMedium.copyWith(
                        color: AppColor.error,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
