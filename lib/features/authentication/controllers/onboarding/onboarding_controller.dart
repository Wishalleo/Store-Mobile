import 'package:cashier_store/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();
  // Variabel
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;
  void updatePageIndicator(index) => currentPageIndex.value = index;
  void dotNavigatorClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      // currentPageIndex.value = page;
      pageController.jumpToPage(page);
    }
  }

  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
