import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/curved_edges/curved_edge_widget.dart';
import 'package:e_commerce_app/common/widgets/icons/curclar_icon.dart';
import 'package:e_commerce_app/common/widgets/images/round_image.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
    required this.isDark,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: isDark ? TColors.darkGrey : TColors.light,
        child: Stack(
          children: [
            /// main large image
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(
                  TSizes.productImageRadius * 2,
                ),
                child: Center(
                  child: Image(
                    image: AssetImage(TImages.productImage1),
                  ),
                ),
              ),
            ),

            ///Image slider
            Positioned(
              bottom: 30,
              right: 0,
              left: TSizes.padding_large/2,
              child: Center(
                child: SizedBox(
                  height: 70,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder:
                        (_, __) => SizedBox(width: TSizes.spaceBtWItems),
                    itemCount: 4,
                    itemBuilder:
                        (_, index) => TRoundImage(
                      border: Border.all(color: TColors.primary),
                      padding: EdgeInsets.all(TSizes.padding_small),
                      width: 70,
                      imageUrl: TImages.productImage2,
                    ),
                  ),
                ),
              ),
            ),
            TAppBar(
              showBackArrow: true,
              actions: [
                TCircularIcon(icon: Iconsax.heart5,color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}