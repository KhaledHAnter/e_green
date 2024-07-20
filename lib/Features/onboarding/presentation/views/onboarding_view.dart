import 'package:e_green/Core/utils/styles.dart';
import 'package:e_green/Features/onboarding/presentation/views/widgets/onboarding_view_body.dart';
import 'package:e_green/constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kContentColor,
      appBar: AppBar(
        backgroundColor: kContentColor,
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.grey.shade800,
            ),
            onPressed: () {},
            child: const Text(
              "Skip",
              style: Styles.textStyle18,
            ),
          ),
          const Gap(12),
        ],
      ),
      body: const OnboardingViewBody(),
    );
  }
}
