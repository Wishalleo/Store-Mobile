import 'package:cashier_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:cashier_store/core/assets/assets.gen.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeImage = 60;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: WSizes.sm, vertical: WSizes.xs),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top',
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'Lihat Semua >',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.apply(color: WColors.info),
              ),
            ],
          ),
          Text('481 Produk', style: Theme.of(context).textTheme.labelSmall),
          SizedBox(height: WSizes.sm),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: WColors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    width: 1,
                    color: WColors.black.withOpacity(0.1),
                  ),
                ),
                child: WRoundedContainer(
                  width: sizeImage,
                  height: sizeImage,
                  backgroundColor: WColors.lightContainer,
                  radius: 8,
                  child: Image.asset(Assets.images.products.banana.path),
                ),
              ),
            ],
          ),
          SizedBox(height: WSizes.sm),
          Divider(color: WColors.black.withOpacity(0.1)),
        ],
      ),
    );
  }
}
