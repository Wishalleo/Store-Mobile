import 'package:cashier_store/common/widgets/appbar/appbar.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/features/personalization/screens/items/management/categories/category_screen.dart';
import 'package:cashier_store/features/personalization/screens/items/management/products/product_screen.dart';
import 'package:cashier_store/features/personalization/screens/widgets/management_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ManagementScreen extends StatelessWidget {
  const ManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WAppbar(title: Text('Manajemen Toko'), showBackArrow: true),
      body: Padding(
        padding: const EdgeInsets.all(WSizes.md),
        child: Column(
          children: [
            ManagementItem(
              onTap: () => Get.to(ProductScreen()),
              icon: Iconsax.box,
              colorIcon: WColors.success,
              title: 'Produk',
              label: 'Tambah, edit & hapus produk',
            ),
            SizedBox(height: WSizes.sm),
            ManagementItem(
              onTap: () => Get.to(CategoryScreen()),
              icon: Iconsax.category_2,
              colorIcon: WColors.warning,
              title: 'Kategori',
              label: 'Atur pengelompokan barang',
            ),
            SizedBox(height: WSizes.sm),
            ManagementItem(
              onTap: () {},
              icon: Iconsax.ruler,
              colorIcon: WColors.error,
              title: 'Satuan Unit',
              label: 'Kelola Pcs, Kg, Box, dll',
            ),
          ],
        ),
      ),
    );
  }
}
