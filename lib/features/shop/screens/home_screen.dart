import 'package:cashier_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:cashier_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:cashier_store/common/widgets/custom_shapes/container/toggle_switcher.dart';
import 'package:cashier_store/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:cashier_store/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  SizedBox(height: WSizes.appBarHeight),
                  Padding(
                    padding: const EdgeInsets.only(right: WSizes.spaceBtwItems),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: WSizes.defaultSpace,
                            ),
                            child: SearchContainer(
                              onTap: () {},
                              label: 'Cari Produk',
                            ),
                          ),
                        ),
                        CartCounterIcon(onPressed: () {}),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(WSizes.sm),
              child: Column(
                children: [
                  ToggleSwitcher(),
                  SizedBox(height: WSizes.spaceBtwItems),
                  Row(
                    children: [
                      ProductCardVertical(),
                      SizedBox(width: WSizes.sm),
                      ProductCardVertical(),
                      SizedBox(width: WSizes.sm),
                      ProductCardVertical(),
                    ],
                  ),
                  // Column(children: [CategoryCard(), CategoryCard()]),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: WSizes.xl,
          vertical: WSizes.sm,
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
            decoration: BoxDecoration(
              color: WColors.buttonPrimary,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'LANJUTKAN KE PEMBAYARAN',
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.titleLarge!.apply(color: WColors.white),
            ),
          ),
        ),
      ),
    );
  }
}
