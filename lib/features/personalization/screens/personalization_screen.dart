import 'package:cashier_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:cashier_store/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:cashier_store/common/widgets/products/menu_icon/menu_counter_icon.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/features/personalization/screens/widgets/personalization_item.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PersonalizationScreen extends StatelessWidget {
  const PersonalizationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PrimaryHeaderContainer(
            child: Column(
              children: [
                SizedBox(height: WSizes.appBarHeight),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: WSizes.spaceBtwItems,
                  ),
                  child: SizedBox(
                    height: 55,
                    width: double.infinity,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Text(
                          'Pengaturan',
                          style: Theme.of(context).textTheme.headlineSmall!
                              .apply(color: WColors.textWhite),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: WSizes.sm),
          PersonalizationItem(
            icon: Iconsax.box,
            title: 'Produk & Kategori',
            label: 'Kelola produk, kategori, harga, dan stok barang',
            onTap: () {},
          ),
          PersonalizationItem(
            icon: Iconsax.percentage_circle,
            title: 'Pajak & Diskon',
            label: 'Atur besaran PPN, service charge, dan promo',
            onTap: () {},
          ),
          PersonalizationItem(
            icon: Iconsax.people,
            title: 'Manajemen Pegawai',
            label: 'Tambah akun kasir dan atur hak akses',
            onTap: () {},
          ),
          PersonalizationItem(
            icon: Iconsax.printer,
            title: 'Printer & Struk',
            label: 'Koneksi printer thermal dan desain struk',
            onTap: () {},
          ),
          PersonalizationItem(
            icon: Iconsax.cloud_change,
            title: 'Backup & Restore',
            label: 'Amankan database agar riwayat tidak hilang',
            onTap: () {},
          ),
          PersonalizationItem(
            icon: Iconsax.info_circle,
            title: 'Tentang Aplikasi',
            label: 'Versi aplikasi dan kontak developer',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
