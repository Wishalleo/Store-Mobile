import 'package:cashier_store/common/widgets/appbar/appbar.dart';
import 'package:cashier_store/common/widgets/products/menu_icon/menu_counter_icon.dart';
import 'package:cashier_store/common/widgets/products/product_cards/product_card_horizontal.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WAppbar(
        title: Text('Produk'),
        showBackArrow: true,
        actions: [CounterIcon(onPressed: () {}, icon: Iconsax.search_normal)],
      ),
      body: ListView.separated(
        itemCount: 10,
        padding: EdgeInsets.all(WSizes.md),
        separatorBuilder: (context, index) =>
            SizedBox(height: WSizes.spaceBtwItems),
        itemBuilder: (BuildContext context, int index) {
          return ProductCardHorizontal();
        },
      ),
    );
  }
}
