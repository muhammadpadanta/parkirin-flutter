// File: onboarding_screen.dart
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  final String lottieAsset;
  final String text;

  const OnboardingScreen({
    super.key,
    required this.lottieAsset,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: constraints.maxHeight * 0.4,
              child: Lottie.asset(
                lottieAsset,
                frameRate: FrameRate.max,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      },
    );
  }
}
