import 'package:cashier_store/core/assets/assets.gen.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/core/constants/text_strings.dart';
import 'package:cashier_store/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(WSizes.defaultSpace),
          child: Column(
            children: [
              Image.asset(
                Assets.images.onBoardingImages.pudgyPenguinsYuppy.path,
                width: MediaQuery.of(Get.context!).size.width * 0.6,
              ),
              SizedBox(height: WSizes.spaceBtwSections),
              Text(
                WTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: WSizes.spaceBtwItems),
              Text(
                'support@mail.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: WSizes.spaceBtwItems),
              Text(
                WTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: WSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: () {}, child: Text('Selesai')),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Kirim ulang e-mail'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
