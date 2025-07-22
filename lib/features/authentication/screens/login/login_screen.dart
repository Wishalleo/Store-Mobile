import 'package:cashier_store/common/styles/spacing_styles.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:cashier_store/common/widgets/login_signup/form_divider.dart';
import 'package:cashier_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:cashier_store/common/widgets/login_signup/social_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: WSpacingStyles.paddingWithAppBar,
          child: Column(
            children: [
              LoginHeader(),
              LoginForm(),
              FormDivider(title: 'Atau Masuk Dengan'),
              SizedBox(height: WSizes.spaceBtwSections),
              SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
