import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Positioned(
      bottom: kBottomNavigationBarHeight + 25,
      left: WSizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigatorClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? WColors.light : WColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
