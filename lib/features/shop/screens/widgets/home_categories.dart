import 'package:cashier_store/common/widgets/image_text/vertical_image_text.dart';
import 'package:cashier_store/core/assets/assets.gen.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (_, index) {
          return VerticalImageText(
            title: 'Insektisida',
            image: Assets.images.onBoardingImages.pudgyPenguinsCalm.path,
            onTap: () {},
          );
        },
      ),
    );
  }
}
