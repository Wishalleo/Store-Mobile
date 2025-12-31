import 'package:cashier_store/common/styles/shadows.dart';
import 'package:cashier_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ManagementItem extends StatelessWidget {
  const ManagementItem({
    super.key,
    required this.onTap,
    required this.icon,
    required this.colorIcon,
    required this.title,
    required this.label,
  });
  final VoidCallback onTap;
  final IconData icon;
  final Color colorIcon;
  final String title;
  final String label;

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Container(
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
              backgroundColor: colorIcon,
              child: Icon(icon),
            ),
            SizedBox(width: WSizes.md),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.titleLarge),
                SizedBox(height: WSizes.xs),
                Text(label, style: Theme.of(context).textTheme.labelLarge),
              ],
            ),
            Spacer(),
            Icon(Iconsax.arrow_right_3),
          ],
        ),
      ),
    );
  }
}
