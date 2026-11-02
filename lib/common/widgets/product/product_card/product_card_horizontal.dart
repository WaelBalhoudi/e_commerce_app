import 'package:e_commerce_app/common/styles/shadow_style.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/icons/brand_title_with_verifiedIcon.dart';
import 'package:e_commerce_app/common/widgets/icons/curclar_icon.dart';
import 'package:e_commerce_app/common/widgets/images/round_image.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/product_details.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/helpers/helper_function.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: () {
        Get.to(ProductDetails());
      },
      child: Container(
        padding: EdgeInsets.all(2),
        width: 310,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.lightContainer,
        ),
        child: Row(
          children: [
            /// Thumbnail
            TRoundedContainer(
              height: 120,
              padding: EdgeInsets.all(TSizes.padding_small),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  SizedBox(
                    height: 120,
                    width: 120,
                    child: TRoundImage(
                      imageUrl: TImages.productImage1,
                      applyImageRadius: true,
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: TRoundedContainer(
                      radius: TSizes.cardRadiusSm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: EdgeInsets.symmetric(
                        horizontal: TSizes.padding_small,
                        vertical: TSizes.padding_x_small,
                      ),
                      child: Text(
                        "25%",
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.apply(color: TColors.black),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: TCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                      backgroundColor: Colors.white.withOpacity(.8),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: TSizes.spaceBtWItems / 2),

            /// Details
            SizedBox(
              width: 162,
              child: Padding(
                padding: EdgeInsets.only(top: TSizes.padding_small,left: TSizes.padding_small),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TProductTitleText(
                          title: 'Green Nike Hlf Sleves Shirt',
                          smallSize: true,
                        ),
                        SizedBox(height: TSizes.spaceBtWItems / 2),
                        TBrandTitleWithVerifiedIcon(title: 'Nike'),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(child: TProductPriceText(price: '250.50')),
                        Container(
                          decoration: BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight: Radius.circular(
                                TSizes.productImageRadius,
                              ),
                            ),
                          ),
                          child: SizedBox(
                            width: TSizes.iconL*1.2,
                            height: TSizes.iconL*1.2,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Iconsax.add, color: TColors.textWhite),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
