import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: 'Nama depan',
                  ),
                ),
              ),
              SizedBox(width: WSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    // prefixIcon: Icon(Iconsax.user),
                    labelText: 'Nama belakang',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: WSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: 'E-mail',
            ),
          ),
          SizedBox(height: WSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.call),
              labelText: 'Nomor telepon',
            ),
          ),
          SizedBox(height: WSizes.spaceBtwInputFields),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: 'Kata sandi',
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          SizedBox(height: WSizes.spaceBtwSections),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(onPressed: () {}, child: Text('Buat akun')),
          ),
        ],
      ),
    );
  }
}
