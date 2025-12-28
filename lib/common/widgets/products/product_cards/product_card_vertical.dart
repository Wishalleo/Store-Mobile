import 'package:cashier_store/common/styles/shadows.dart';
import 'package:cashier_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:cashier_store/common/widgets/images/rounded_image.dart';
import 'package:cashier_store/core/assets/assets.gen.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      width: 120,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [WShadowsStyle.verticalProductShadow],
        borderRadius: BorderRadius.circular(WSizes.productImageRadius),
        color: dark ? WColors.darkContainer : WColors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              WRoundedContainer(
                height: 120,
                padding: EdgeInsets.all(WSizes.sm),
                backgroundColor: dark ? WColors.dark : WColors.light,
                child: Column(
                  children: [
                    RoundedImage(
                      imageUrl: Assets.images.products.doritos.path,
                      applyImageRadius: true,
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: WColors.buttonPrimary,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(WSizes.productImageRadius),
                        topLeft: Radius.circular(8),
                      ),
                    ),
                    child: Text(
                      '+',
                      style: Theme.of(
                        context,
                      ).textTheme.titleLarge!.apply(color: WColors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(left: WSizes.sm, top: WSizes.sm),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Doritos',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: WSizes.xs),
                    Text(
                      'Rp 1.000.400',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: WSizes.xs),
                    Text(
                      'Stok: 1',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    SizedBox(height: WSizes.sm),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
