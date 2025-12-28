import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.onTap,
    required this.label,
    this.showBorder = false,
    this.borderColor = WColors.borderPrimary,
  });

  final String label;
  final bool showBorder;
  final Color borderColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // height: 50,
        decoration: BoxDecoration(
          color: dark ? WColors.black : WColors.white,
          borderRadius: BorderRadius.all(Radius.circular(WSizes.md)),
          border: showBorder ? Border.all(color: borderColor) : null,
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(WSizes.md),
              child: Icon(Iconsax.search_normal),
            ),
            Text(label),
          ],
        ),
      ),
    );
  }
}
