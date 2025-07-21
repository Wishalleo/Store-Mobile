import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class LoginSocialButton extends StatelessWidget {
  const LoginSocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: WColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              Assets.logos.google.path,
              width: WSizes.iconMd,
              height: WSizes.iconMd,
            ),
          ),
        ),
        SizedBox(width: WSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: WColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              Assets.logos.facebook.path,
              width: WSizes.iconMd,
              height: WSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}
