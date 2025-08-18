import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/constants/svg_assets.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_typography.dart';

class HomeEmptyState extends StatelessWidget {
  const HomeEmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.fem),
      child: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            SvgAssets.startingWork,
            fit: BoxFit.cover,
            width: 200.fem,
            height: 200.fem,
          ),
          const Gap(8),
          Text(
            'Start Your Journey',
            style: AppTypography.displayMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            'Every big step start with small step. Note your first idea and start your journey!',
            style: AppTypography.textMedium,
            textAlign: TextAlign.center,
          ),
          Gap(4.fem),
          Align(
            alignment: Alignment(Alignment.center.x + 0.4, Alignment.center.y),
            child: SvgPicture.asset(
              SvgAssets.arrow,
              height: 150.fem,
              width: 60.fem,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
