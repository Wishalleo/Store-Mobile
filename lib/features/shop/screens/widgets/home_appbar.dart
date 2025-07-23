import 'package:cashier_store/common/widgets/appbar/appbar.dart';
import 'package:cashier_store/common/widgets/products/cart_menu_icon.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return WAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            WTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: WColors.grey),
          ),
          Text(
            WTexts.homeAppbarSubTitle,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall!.apply(color: WColors.white),
          ),
        ],
      ),
      actions: [CartCounterIcon(onPressed: () {})],
    );
  }
}
