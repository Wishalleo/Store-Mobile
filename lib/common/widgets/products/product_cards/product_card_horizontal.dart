import 'package:cashier_store/common/styles/shadows.dart';
import 'package:cashier_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: EdgeInsets.all(WSizes.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: dark ? WColors.darkContainer : WColors.white,
        boxShadow: [WShadowsStyle.horizontalProductShadow],
      ),
      child: Row(
        children: [
          WRoundedContainer(
            height: 50,
            width: 50,
            backgroundColor: WColors.primary,
            child: Icon(Iconsax.image),
          ),
          SizedBox(width: WSizes.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fastac yang akan banyak pembeli',
                  style: Theme.of(context).textTheme.titleLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: WSizes.xs),
                Text('Stok: 1', style: Theme.of(context).textTheme.labelLarge),
              ],
            ),
          ),
          SizedBox(width: WSizes.md),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Rp. 54.000',
                style: Theme.of(
                  context,
                ).textTheme.titleLarge!.apply(color: WColors.primary),
              ),
              SizedBox(height: WSizes.xs),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: WSizes.sm,
                  vertical: WSizes.xs,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: WColors.success,
                ),
                child: Text(
                  'Aktif',
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall!.apply(color: WColors.textWhite),
                ),
              ),
            ],
          ),
          SizedBox(width: WSizes.md),
          Icon(Iconsax.edit),
        ],
      ),
    );
  }
}
