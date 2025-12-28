import 'package:carousel_slider/carousel_slider.dart';
import 'package:cashier_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:cashier_store/common/widgets/images/rounded_image.dart';
import 'package:cashier_store/core/constants/colors.dart';
import 'package:cashier_store/core/constants/sizes.dart';
import 'package:cashier_store/features/shop/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.promoBanner1,
    required this.promoBanner2,
    required this.promoBanner3,
  });
  final String promoBanner1, promoBanner2, promoBanner3;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            // autoPlay: true,
            // autoPlayInterval: Duration(seconds: 10),
            aspectRatio: 16 / 9,
            enlargeCenterPage: true,
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndikator(index),
          ),
          items: [
            RoundedImage(imageUrl: promoBanner1),
            RoundedImage(imageUrl: promoBanner2),
            RoundedImage(imageUrl: promoBanner3),
          ],
        ),
        SizedBox(height: WSizes.spaceBtwItems),
        Obx(() {
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < 3; i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor: controller.carouselCurrentPage.value == i
                      ? WColors.primary
                      : WColors.grey,
                ),
            ],
          );
        }),
      ],
    );
  }
}
