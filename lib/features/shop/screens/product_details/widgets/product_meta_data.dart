import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/icons/brand_title_with_verifiedIcon.dart';
import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunction.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [

        /// Price and sale price
        Row(
          children: [
            TRoundedContainer(
              backgroundColor: TColors.secondary.withOpacity(.8),
              padding: EdgeInsets.symmetric(vertical: TSizes.padding_x_small,
                  horizontal: TSizes.padding_small),
              radius: TSizes.padding_small,
              child: Text("25%", style: Theme
                  .of(context)
                  .textTheme
                  .labelLarge!
                  .apply(color: Colors.black),),

            ),
            SizedBox(width: TSizes.spaceBtWItems,),
            Text("\$255", style: Theme
                .of(context)
                .textTheme
                .titleMedium!
                .apply(decoration: TextDecoration.lineThrough),),

            SizedBox(width: TSizes.spaceBtWItems,),
            TProductPriceText(price: "150", isLarge: true,)
          ],
        ),
        SizedBox(height: TSizes.spaceBtWItems / 1.5,),

        /// Title
        TProductTitleText(title: "Green Nike Sports Shirt"),
        SizedBox(height: TSizes.spaceBtWItems / 1.5,),
        Row(
          children: [
            TProductTitleText(title: "Status"),
            SizedBox(width: TSizes.spaceBtWItems / 2,),

            Text("In Stock ", style: Theme
                .of(context)
                .textTheme
                .titleMedium,),

          ],
        ),
        SizedBox(height: TSizes.spaceBtWItems / 1.5,),
        Row(
          children: [
            TCircularImage(
                isDark: isDark,
                image: TImages.cosmeticIcon,
                width: 32,
                height: 32,
                isNetworkImage: false,
              overLayColor: isDark ?TColors.textWhite:TColors.black,
            ),
            SizedBox(width: 10,),

            TBrandTitleWithVerifiedIcon(
              title: 'Nike',


            )
          ],
        )

        /// Stack Status
      ],
    );
  }
}