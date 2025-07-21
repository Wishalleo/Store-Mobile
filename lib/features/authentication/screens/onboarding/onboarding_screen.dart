import 'package:cashier_store/core/constants/text_strings.dart';
import 'package:cashier_store/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:cashier_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:cashier_store/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:cashier_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:cashier_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:cashier_store/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              OnBoardingPage(
                image: Assets.images.onBoardingImages.pudgyPenguinsCart.path,
                title: WTexts.onBoardingTitle1,
                subtitle: WTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: Assets.images.onBoardingImages.pudgyPenguinsCoin.path,
                title: WTexts.onBoardingTitle2,
                subtitle: WTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image:
                    Assets.images.onBoardingImages.pudgyPenguinsDelivery.path,
                title: WTexts.onBoardingTitle3,
                subtitle: WTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
