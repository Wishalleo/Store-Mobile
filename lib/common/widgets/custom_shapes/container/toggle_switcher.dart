import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class ToggleSwitcher extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int>? onChanged;
  final double width;
  const ToggleSwitcher({
    super.key,
    this.selectedIndex = 0,
    this.onChanged,
    this.width = 250,
  });

  @override
  Widget build(BuildContext context) {
    final dark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: EdgeInsets.all(WSizes.sm),
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: dark ? WColors.dark : WColors.lightContainer,
      ),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  color: selectedIndex == 0
                      ? WColors.buttonPrimary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Produk',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: selectedIndex == 0
                        ? WColors.white
                        : (dark ? WColors.textWhite : WColors.textPrimary),
                    fontWeight: selectedIndex == 0
                        ? FontWeight.w600
                        : FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: WSizes.sm),
          Expanded(
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  color: selectedIndex == 1
                      ? WColors.buttonPrimary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                child: Text(
                  'Kategori',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: selectedIndex == 1
                        ? WColors.white
                        : (dark ? WColors.textWhite : WColors.textPrimary),
                    fontWeight: selectedIndex == 1
                        ? FontWeight.w600
                        : FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
