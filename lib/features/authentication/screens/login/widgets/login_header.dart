import 'package:cashier_store/core/assets/assets.gen.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/core/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          height: 150,
          dark ? Assets.logos.wLogoWhite.path : Assets.logos.wLogoBlack.path,
        ),
        Text(
          WTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: WSizes.sm),
        Text(
          WTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
