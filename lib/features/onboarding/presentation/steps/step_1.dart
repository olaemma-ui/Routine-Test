import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/core/extensions/fem_extensions.dart';
import 'package:todo_app/core/theme/app_typography.dart';
import 'package:todo_app/widgets/forms/input_field.dart';

class OnboardingStep1 extends StatefulWidget {
  final VoidCallback onChange;
  const OnboardingStep1({super.key, required this.onChange});

  @override
  State<OnboardingStep1> createState() => _OnboardingStep1State();
}

class _OnboardingStep1State extends State<OnboardingStep1> {
  final nameController = TextEditingController();

  final ValueNotifier<bool> canProceed = ValueNotifier<bool>(false);

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
  void initState() {
    super.initState();
    nameController.addListener(_validate);
  }

  void _validate() {
    final isNameValid = nameController.text.trim().length >= 2;
    final isRoutineSelected = selectedRoutine != null;
    canProceed.value = isNameValid && isRoutineSelected;
  }

  void _onSelectRoutine(String value) {
    setState(() {
      selectedRoutine = value;
    });
    _validate(); // recheck conditions after routine change
  }

  @override
  void dispose() {
    nameController.dispose();
    canProceed.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          DesignConstants.screenPadding,
        ).copyWith(bottom: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Let’s personalize your journey.',
              style: AppTypography.displayMedium,
            ),
            Gap(24.fem),
            AppTextField(
              label: 'Name',
              hintText: 'John Doe',
              controller: nameController,
              onChanged: (value) => _validate(),
            ),
            Gap(24.fem),
            Text('Daily routine type', style: AppTypography.textExtraLarge),
            Gap(24.fem),
            Flexible(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: routine.length,
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => _onSelectRoutine(routine[index]),
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
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(16.0.fem),
        child: ValueListenableBuilder<bool>(
          valueListenable: canProceed,
          builder: (context, enabled, _) {
            return FilledButton(
              onPressed: enabled ? widget.onChange : null,
              child: const Text("Next"),
            );
          },
        ),
      ),
    );
  }
}
