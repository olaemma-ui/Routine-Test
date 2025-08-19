import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_typography.dart';

class OnboardingStep2 extends StatefulWidget {
  const OnboardingStep2({super.key});

  @override
  State<OnboardingStep2> createState() => _OnboardingStep2State();
}

class _OnboardingStep2State extends State<OnboardingStep2> {
  final nameController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
  }

  List<String> productivity = ['Work', 'Study', 'Side Hustle', 'Other'];
  List<String> healthFitness = [
    'Excercise',
    'Sports',
    'Diet',
    'Sleep',
    'Water Intake',
    'Other',
  ];
  List<String> selfCare = [
    'Journaling',
    'Reading',
    'Skin-care',
    'Meditation',
    'Other',
  ];

  List<String> selectedProductivity = [];
  List<String> selectedHealthFitness = [];
  List<String> selectedSelfCare = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(DesignConstants.screenPadding),
        child: Column(
          // spacing: 16,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What do you want to track?',
              style: AppTypography.displayMedium,
            ),

            Gap(24.fem),
            Text('Productivity', style: AppTypography.textLarge),
            Gap(16.fem),
            Wrap(
              spacing: 8,
              children: productivity
                  .map(
                    (item) => ActionChip(
                      label: Text(item, style: AppTypography.textMedium),
                      onPressed: () {},
                    ),
                  )
                  .toList(),
            ),

            Gap(24.fem),
            Text('Health & Fitness', style: AppTypography.textLarge),
            Gap(16.fem),
            Wrap(
              spacing: 8,
              children: healthFitness
                  .map(
                    (item) => ActionChip(
                      label: Text(item, style: AppTypography.textMedium),
                      onPressed: () {},
                    ),
                  )
                  .toList(),
            ),

            Gap(24.fem),
            Text('Self-care & Mindfulness', style: AppTypography.textLarge),
            Gap(16.fem),
            Wrap(
              spacing: 8,
              children: selfCare
                  .map(
                    (item) => ActionChip(
                      label: Text(item, style: AppTypography.textMedium),
                      onPressed: () {},
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
