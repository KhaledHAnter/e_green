import 'package:e_green/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class OnboardingText extends StatelessWidget {
  const OnboardingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(
              text: "Enjoy your life with ",
              style: Styles.textStyle42,
            ),
            TextSpan(
              text: "Plants",
              style: Styles.textStyle42.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
