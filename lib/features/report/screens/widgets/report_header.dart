import 'package:cashier_store/common/styles/shadows.dart';
import 'package:cashier_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ReportHeader extends StatelessWidget {
  const ReportHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return WRoundedContainer(
      backgroundColor: WColors.primary,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        stops: [0.3, 1.0],
        colors: [WColors.primary, WColors.tertiary.withOpacity(0.9)],
      ),
      boxShadow: [WShadowsStyle.horizontalProductShadow],
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: WSizes.md,
              vertical: WSizes.md,
            ),
            child: Row(
              children: [
                WRoundedContainer(
                  height: 40,
                  width: 40,
                  backgroundColor: WColors.white.withOpacity(0.6),
                  child: Icon(Iconsax.calendar_1, color: WColors.black),
                ),
                SizedBox(width: WSizes.spaceBtwItems),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Periode Transaksi',
                      style: Theme.of(
                        context,
                      ).textTheme.labelLarge!.apply(color: WColors.textWhite),
                    ),
                    Text(
                      '08 Nov 2025 - 08 Des 2025',
                      style: Theme.of(
                        context,
                      ).textTheme.titleMedium!.apply(color: WColors.textWhite),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Iconsax.arrow_right_3, color: WColors.textWhite, size: 20),
              ],
            ),
          ),
          Divider(thickness: 0.7),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Iconsax.receipt_item,
                              color: WColors.white,
                              size: 18,
                            ),
                            SizedBox(width: WSizes.xs),
                            Text(
                              'Total Transaksi',
                              style: Theme.of(context).textTheme.titleSmall!
                                  .apply(color: WColors.textWhite),
                            ),
                          ],
                        ),
                        SizedBox(height: WSizes.sm),
                        Text(
                          '1023',
                          style: Theme.of(context).textTheme.headlineSmall!
                              .apply(color: WColors.textWhite),
                        ),
                      ],
                    ),
                  ),
                  VerticalDivider(endIndent: 7),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: WSizes.sm),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Iconsax.card_receive,
                                color: WColors.white,
                                size: 18,
                              ),
                              SizedBox(width: WSizes.xs),
                              Text(
                                'Total Pendapatan',
                                style: Theme.of(context).textTheme.titleSmall!
                                    .apply(color: WColors.textWhite),
                              ),
                            ],
                          ),
                          SizedBox(height: WSizes.sm),
                          Text(
                            'Rp. 1.402.023',
                            style: Theme.of(context).textTheme.headlineSmall!
                                .apply(color: WColors.textWhite),
                          ),
                          SizedBox(height: WSizes.sm),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
