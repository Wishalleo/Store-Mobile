import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.title,
    required this.image,
    required this.onTap,
  });
  final String title, image;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Padding(
      padding: const EdgeInsets.only(right: WSizes.spaceBtwItems),
      child: Column(
        children: [
          Container(
            height: 56,
            width: 56,
            padding: EdgeInsets.all(WSizes.sm),
            decoration: BoxDecoration(
              color: dark ? WColors.black : WColors.white,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Image.asset(image),
          ),
          SizedBox(height: WSizes.spaceBtwItems / 2),
          SizedBox(
            width: 50,
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.labelMedium!.apply(color: WColors.white),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
