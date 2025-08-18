import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_typography.dart';
import 'package:todo_app/widgets/forms/input_field.dart';

class OnboardingStep1 extends StatefulWidget {
  const OnboardingStep1({super.key});

  @override
  State<OnboardingStep1> createState() => _OnboardingStep1State();
}

class _OnboardingStep1State extends State<OnboardingStep1> {
  final nameController = TextEditingController();

  List<String> routine = [
    'Founder',
    'Working Professional',
    'Student',
    'Freelancer',
    'Home-maker',
    'Other',
  ];

  String? selectedRoutine;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          DesignConstants.screenPadding,
        ).copyWith(bottom: 0),
        child: Column(
          // spacing: 16,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gap(40.fem),
            Text(
              'Let’s personalize your journey.',
              style: AppTypography.displayMedium,
            ),

            Gap(24.fem),
            AppTextField(
              label: 'Name',
              hintText: 'John Doe',
              controller: nameController,
            ),
            Gap(24.fem),

            Text('Daily routine type', style: AppTypography.textExtraLarge),
            Gap(24.fem),
            Flexible(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: routine.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedRoutine = routine[index];
                    });
                  },
                  child: Card(
                    color: selectedRoutine == routine[index]
                        ? Theme.of(context).cardColor
                        : null,
                    child: Padding(
                      padding: EdgeInsets.all(16.0.fem),
                      child: Center(
                        child: Text(
                          routine[index],
                          style: AppTypography.textExtraLarge,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
