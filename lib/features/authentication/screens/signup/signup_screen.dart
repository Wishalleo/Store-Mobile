import 'package:cashier_store/common/widgets/login_signup/form_divider.dart';
import 'package:cashier_store/common/widgets/login_signup/social_button.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/core/constants/text_strings.dart';
import 'package:cashier_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(WSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                WTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: WSizes.spaceBtwSections),
              SignupForm(),
              SizedBox(height: WSizes.spaceBtwSections),
              FormDivider(title: 'Atau Daftar Dengan'),
              SizedBox(height: WSizes.spaceBtwSections),
              SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
