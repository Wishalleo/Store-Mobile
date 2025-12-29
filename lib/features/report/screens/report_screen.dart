import 'package:cashier_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:cashier_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:cashier_store/common/widgets/products/menu_icon/menu_counter_icon.dart';
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
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  SizedBox(height: WSizes.appBarHeight),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: WSizes.spaceBtwItems,
                    ),
                    child: SizedBox(
                      height: 55,
                      width: double.infinity,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Text(
                            'Laporan',
                            style: Theme.of(context).textTheme.headlineSmall!
                                .apply(color: WColors.textWhite),
                          ),
                          // Spacer(),
                          Positioned(
                            right: 0,
                            child: Row(
                              children: [
                                CounterIcon(
                                  icon: Iconsax.notification,
                                  onPressed: () {},
                                ),
                                CounterIcon(
                                  icon: Iconsax.shopping_bag,
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: WSizes.md),
              child: Column(
                children: [
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
          ],
        ),
      ),
    );
  }
}
