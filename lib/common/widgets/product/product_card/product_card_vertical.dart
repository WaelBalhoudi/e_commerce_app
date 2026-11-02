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
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TProductCardVertical extends StatelessWidget {
  const TProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunction.isDarkMode(context);
    return GestureDetector(
      onTap: (){
        Get.to(ProductDetails());
      },
      child: Container(
        padding: EdgeInsets.all(2),
        width: 180,
        decoration: BoxDecoration(
          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.textWhite,
        ),
        child: Column(
          children: [
            ///Thumbnait, wishlist , discount tag
            TRoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.padding_small),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  TRoundImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                    width: 180,
                    backgroundColor: Colors.transparent,
                  ),
                  Positioned(
                    top: 12,
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
                    top: 12,
                    child: TCircularIcon(icon: Iconsax.heart5, color: Colors.red,backgroundColor: Colors.white.withOpacity(.8),),
                  ),
                ],
              ),
            ),
            SizedBox(height: TSizes.spaceBtWItems / 2),
            Padding(
              padding: EdgeInsets.only(left: TSizes.padding_small),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: "Green Nike Air Shoes",
                    smallSize: true,
                  ),
                  SizedBox(height: TSizes.spaceBtWItems / 2),
                  TBrandTitleWithVerifiedIcon(title: "Nike"),

                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: TSizes.padding_small),
                  child: TProductPriceText(price: "84.0",),
                ),
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
            ),

            /// Details
          ],
        ),
      ),
    );
  }
}


