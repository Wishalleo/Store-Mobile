import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/features/authentication/screens/signup/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: WSizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                label: Text('E-mail'),
              ),
            ),
            SizedBox(height: WSizes.spaceBtwInputFields),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                label: Text('Kata sandi'),
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            SizedBox(height: WSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text('Ingat aku'),
                  ],
                ),
                TextButton(onPressed: () {}, child: Text('Lupa Kata Sandi?')),
              ],
            ),
            SizedBox(height: WSizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {}, child: Text('Masuk')),
            ),
            SizedBox(height: WSizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(SignupScreen());
                },
                child: Text('Daftar akun'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
