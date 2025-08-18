import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todo_app/core/constants/design_constants.dart';
import 'package:todo_app/features/onboarding/presentation/steps/step_1.dart';
import 'package:todo_app/features/onboarding/presentation/steps/step_2.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final pageController = PageController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: context.pop,
          icon: Icon(CupertinoIcons.back),
        ),
      ),
      body: PageView(
        controller: pageController,
        physics: ClampingScrollPhysics(),
        children: [OnboardingStep1(), OnboardingStep2()],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(DesignConstants.screenPadding),
        child: FilledButton(onPressed: () {}, child: Text('Next')),
      ),
    );
  }
}
