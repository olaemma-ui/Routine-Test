import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_colors.dart';

class HomeLoadingState extends StatelessWidget {
  const HomeLoadingState({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: .655,
        mainAxisSpacing: 8.fem,
        crossAxisSpacing: 8.fem,
      ),
      cacheExtent: 300,
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: isDarkMode
                ? AppColor.defaultBorderDark.withOpacity(.05)
                : AppColor.defaultBorderLight.withOpacity(.1),
            // border: Border.all(
            //   color: isDarkMode
            //       ? AppColor.defaultBorderDark
            //       : AppColor.defaultBorderLight,
            // ),
          ),
        );
      },
    );
  }
}
