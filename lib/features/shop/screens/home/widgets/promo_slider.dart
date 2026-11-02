import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/ciruclar_container.dart';
import 'package:e_commerce_app/common/widgets/images/round_image.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  final List<String> banners;
  const TPromoSlider({
    super.key, required this.banners,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items:banners.map((url)=>TRoundImage(imageUrl: url)).toList(),

          options: CarouselOptions(
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
        ),
        SizedBox(height: TSizes.spaceBtWItems,),
        Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < banners.length; i++)
              TCircularContainer(
                margin: EdgeInsets.only(right: 10),
                width: 20,
                height: 4,
                backgroundColor: controller.carouselCurrentIndex.value == i
                    ? TColors.primary
                    : TColors.grey,
              ),
          ],
        ))

      ],
    );
  }
}

