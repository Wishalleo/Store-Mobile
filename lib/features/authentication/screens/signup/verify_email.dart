import 'package:cashier_store/common/widgets/success_screen/success_screen.dart';
import 'package:cashier_store/core/assets/assets.gen.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/core/constants/text_strings.dart';
import 'package:cashier_store/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

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
                WTexts.confirmEmail,
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
                WTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: WSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(
                    SuccessScreen(
                      image:
                          Assets.images.onBoardingImages.pudgyPenguinsCalm.path,
                      title: WTexts.yourAccountCreatedTitle,
                      subTitle: WTexts.yourAccountCreatedSubTitle,
                      onPressed: () => Get.to(LoginScreen()),
                    ),
                  ),
                  child: Text('Lanjutkan'),
                ),
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
