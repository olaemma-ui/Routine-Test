import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_typography.dart';
import 'package:todo_app/routes/app_routes_names.dart';

class OnboardingStep2 extends StatefulWidget {
  const OnboardingStep2({super.key});

  @override
  State<OnboardingStep2> createState() => _OnboardingStep2State();
}

class _OnboardingStep2State extends State<OnboardingStep2> {
  final nameController = TextEditingController();
  final ValueNotifier<bool> canProceed = ValueNotifier(false);

  List<String> productivity = ['Work', 'Study', 'Side Hustle', 'Other'];
  List<String> healthFitness = [
    'Exercise',
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
  void dispose() {
    nameController.dispose();
    canProceed.dispose();
    super.dispose();
  }

  void _toggleSelection(String item, List<String> selectedList) {
    setState(() {
      if (selectedList.contains(item)) {
        selectedList.remove(item);
      } else {
        selectedList.add(item);
      }

      // ✅ update proceed state
      canProceed.value =
          selectedProductivity.isNotEmpty &&
          selectedHealthFitness.isNotEmpty &&
          selectedSelfCare.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(DesignConstants.screenPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What do you want to track?',
              style: AppTypography.displayMedium,
            ),
            Gap(24.fem),

            // Productivity
            Text('Productivity', style: AppTypography.textLarge),
            Gap(16.fem),
            Wrap(
              spacing: 8,
              children: productivity
                  .map(
                    (item) => ChoiceChip(
                      label: Text(item, style: AppTypography.textMedium),
                      selected: selectedProductivity.contains(item),
                      showCheckmark: false,
                      onSelected: (_) =>
                          _toggleSelection(item, selectedProductivity),
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
                    (item) => ChoiceChip(
                      label: Text(item, style: AppTypography.textMedium),
                      selected: selectedHealthFitness.contains(item),
                      showCheckmark: false,

                      onSelected: (_) =>
                          _toggleSelection(item, selectedHealthFitness),
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
                    (item) => ChoiceChip(
                      label: Text(item, style: AppTypography.textMedium),
                      selected: selectedSelfCare.contains(item),
                      showCheckmark: false,
                      onSelected: (_) =>
                          _toggleSelection(item, selectedSelfCare),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),

      // ✅ Next button only enabled when all categories have at least 1 selection
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(18.0.fem),
        child: ValueListenableBuilder<bool>(
          valueListenable: canProceed,
          builder: (context, enabled, _) {
            return FilledButton(
              onPressed: enabled
                  ? () {
                      context.go(AppRoutes.loginPage.path);
                    }
                  : null,
              child: const Text("Next"),
            );
          },
        ),
      ),
    );
  }
}
