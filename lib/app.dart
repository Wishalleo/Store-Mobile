import 'package:cashier_store/core/theme/theme.dart';
import 'package:cashier_store/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: WAppTheme.lightThemeData,
      darkTheme: WAppTheme.darkThemeData,
      home: OnboardingScreen(),
    );
  }
}
