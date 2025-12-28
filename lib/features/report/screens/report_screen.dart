import 'package:cashier_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:cashier_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/features/report/screens/widgets/report_header.dart';
import 'package:cashier_store/features/report/screens/widgets/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(WSizes.md),
          child: Column(
            children: [
              SizedBox(height: WSizes.appBarHeight),
              ReportHeader(),
              SizedBox(height: WSizes.spaceBtwItems),
              SearchContainer(
                onTap: () {},
                label: 'Cari No. Invoice',
                showBorder: true,
              ),
              SizedBox(height: WSizes.spaceBtwItems),
              TransactionItem(),
              SizedBox(height: WSizes.sm),
              TransactionItem(),
              SizedBox(height: WSizes.sm),
              TransactionItem(),
              SizedBox(height: WSizes.sm),
              TransactionItem(),
              SizedBox(height: WSizes.sm),
              TransactionItem(),
              SizedBox(height: WSizes.sm),
              TransactionItem(),
              SizedBox(height: WSizes.sm),
              TransactionItem(),
              SizedBox(height: WSizes.sm),
            ],
          ),
        ),
      ),
    );
  }
}
