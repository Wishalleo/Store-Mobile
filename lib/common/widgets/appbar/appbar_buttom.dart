import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class WAppbarBottom extends StatelessWidget implements PreferredSizeWidget {
  const WAppbarBottom({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.bottom,
  });
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final PreferredSizeWidget? bottom;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: WColors.primary,
      automaticallyImplyLeading: false,
      leading: showBackArrow
          ? IconButton(
              onPressed: () => Get.back(),
              icon: Icon(Iconsax.arrow_left, color: WColors.textWhite),
            )
          : leadingIcon != null
          ? IconButton(
              onPressed: () => leadingOnPressed,
              icon: Icon(leadingIcon),
            )
          : null,
      title: title,
      centerTitle: true,
      titleTextStyle: Theme.of(
        context,
      ).textTheme.headlineSmall!.apply(color: WColors.textWhite),
      actionsPadding: EdgeInsets.only(right: WSizes.spaceBtwItems),
      actions: actions,

      bottom: bottom,
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0.0));
}
