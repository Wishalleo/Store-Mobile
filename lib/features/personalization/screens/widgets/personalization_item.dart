import 'package:cashier_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PersonalizationItem extends StatelessWidget {
  const PersonalizationItem({
    super.key,
    required this.icon,
    required this.title,
    required this.label,
    required this.onTap,
  });
  final IconData icon;
  final String title;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: WSizes.md),
            child: Row(
              children: [
                WRoundedContainer(
                  backgroundColor: Colors.transparent,
                  child: Icon(icon),
                ),
                SizedBox(width: WSizes.md),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyLarge!.apply(),
                    ),
                    Text(
                      label,
                      style: Theme.of(context).textTheme.labelLarge!.apply(),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Iconsax.arrow_right_3),
              ],
            ),
          ),
        ),
        SizedBox(height: WSizes.md),
      ],
    );
  }
}
