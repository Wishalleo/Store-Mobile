import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/features/personalization/screens/personalization_screen.dart';
import 'package:cashier_store/features/report/screens/report_screen.dart';
import 'package:cashier_store/features/shop/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      bottomNavigationBar: Obx(() {
        return NavigationBar(
          height: 60,
          elevation: 0,
          backgroundColor: dark ? WColors.black : WColors.white,
          indicatorColor: dark
              ? WColors.white.withOpacity(0.1)
              : WColors.black.withOpacity(0.1),
          selectedIndex: controller.currentIndex.value,
          onDestinationSelected: (index) =>
              controller.currentIndex.value = index,

          destinations: [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Beranda'),
            NavigationDestination(
              icon: Icon(Iconsax.note_214),
              label: 'Laporan',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.chart_2),
              label: 'Analisis',
            ),
            NavigationDestination(
              icon: Icon(Iconsax.setting),
              label: 'Pengaturan',
            ),
          ],
        );
      }),
      body: Obx(() => controller.pageScreens[controller.currentIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt currentIndex = 0.obs;

  List pageScreens = [
    HomeScreen(),
    ReportScreen(),
    Container(color: Colors.black),
    PersonalizationScreen(),
  ];
}
