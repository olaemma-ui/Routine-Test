import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/constants/svg_assets.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_colors.dart';
import 'package:todo_app/core/theme/app_typography.dart';
import 'package:todo_app/routes/app_routes_names.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(DesignConstants.screenPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            const Spacer(),

            SvgPicture.asset(
              SvgAssets.ideas,
              fit: BoxFit.cover,
              width: 94.fem,
              height: 100.fem,
            ),
            const Gap(24),
            Text('Welcome to', style: AppTypography.displayLarge),
            Text(
              'Routine',
              style: AppTypography.displayLarge.copyWith(
                color: AppColor.primary,
              ),
            ),
            const Spacer(),
            FilledButton(
              onPressed: () {
                context.pushReplacement(AppRoutes.loginPage.path);
              },
              child: Text(
                'Let’s Get Started',
                style: AppTypography.buttonMedium,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
