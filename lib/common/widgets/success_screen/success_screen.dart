import 'package:cashier_store/common/styles/spacing_styles.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });
  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: WSpacingStyles.paddingWithAppBar,
        child: Column(
          children: [
            Image.asset(
              image,
              width: MediaQuery.of(Get.context!).size.width * 0.6,
            ),
            SizedBox(height: WSizes.spaceBtwSections),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),

            SizedBox(height: WSizes.spaceBtwItems),
            Text(
              subTitle,
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: WSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: onPressed,
                child: Text('Lanjutkan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
