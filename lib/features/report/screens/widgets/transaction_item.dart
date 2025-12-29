import 'package:cashier_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/features/report/screens/report_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        Get.to(ReportDetailScreen());
      },
      child: WRoundedContainer(
        height: 85,
        width: double.infinity,
        backgroundColor: dark ? WColors.darkContainer : WColors.white,
        borderColor: WColors.black.withOpacity(0.1),
        showBorder: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              WRoundedContainer(
                height: 50,
                width: 50,
                backgroundColor: WColors.primary.withOpacity(0.1),
                child: Icon(Iconsax.receipt_2_1, color: WColors.primary),
              ),
              SizedBox(width: WSizes.spaceBtwItems),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '#RYS55781YS',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  Row(
                    children: [
                      Icon(Iconsax.clock, size: 12),
                      SizedBox(width: WSizes.xs),
                      Text(
                        '08-11-25 14:00',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Rp. 544.000',
                    style: Theme.of(
                      context,
                    ).textTheme.titleLarge!.apply(color: WColors.primary),
                  ),
                  SizedBox(height: WSizes.cardRadiusXs),
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 141, 255, 137),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    child: Row(
                      children: [
                        Icon(
                          Iconsax.money_2,
                          size: 12,
                          color: const Color.fromARGB(255, 2, 63, 4),
                        ),
                        SizedBox(width: WSizes.xs),
                        Text(
                          'Tunai',
                          style: Theme.of(context).textTheme.titleSmall!.apply(
                            color: const Color.fromARGB(255, 2, 63, 4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(width: WSizes.sm),
              Icon(
                Iconsax.arrow_right_3,
                color: dark ? WColors.textWhite : WColors.black,
                size: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
