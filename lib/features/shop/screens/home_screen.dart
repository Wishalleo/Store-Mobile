import 'package:cashier_store/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:cashier_store/common/widgets/custom_shapes/container/search_container.dart';
import 'package:cashier_store/common/widgets/texts/section_heading.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/features/shop/screens/widgets/home_appbar.dart';
import 'package:cashier_store/features/shop/screens/widgets/home_categories.dart';
import 'package:cashier_store/features/shop/screens/widgets/promo_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(height: WSizes.spaceBtwSections),

                  SearchContainer(onTap: () {}),
                  SizedBox(height: WSizes.spaceBtwSections),

                  Padding(
                    padding: EdgeInsetsGeometry.only(left: WSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: 'Kategori Terpopuler',
                          showActionButton: false,
                        ),
                        SizedBox(height: WSizes.spaceBtwSections),
                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(WSizes.defaultSpace),
              child: PromoSlider(),
            ),
          ],
        ),
      ),
    );
  }
}
