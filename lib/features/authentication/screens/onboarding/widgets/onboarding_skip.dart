import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: kToolbarHeight,
      right: WSizes.defaultSpace,
      child: TextButton(
        onPressed: () {
          OnboardingController.instance.skipPage();
        },
        child: Text('Skip', style: Theme.of(context).textTheme.bodyLarge),
      ),
    );
  }
}
