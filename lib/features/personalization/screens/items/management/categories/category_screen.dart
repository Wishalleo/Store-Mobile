import 'package:cashier_store/common/widgets/appbar/appbar.dart';
import 'package:cashier_store/common/widgets/products/product_cards/category_card.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WAppbar(title: Text('Kategori'), showBackArrow: true),
      body: ListView.separated(
        itemCount: 10,
        padding: EdgeInsets.all(WSizes.md),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: WSizes.sm);
        },
        itemBuilder: (BuildContext context, int index) {
          return CategoryCard(label: 'Ubah Nama', showImage: false);
        },
      ),
    );
  }
}
