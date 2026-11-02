import 'package:e_commerce_app/common/widgets/choips/choice_chip.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/ciruclar_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunction.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        /// -- Selected Attribute Pricing & Description
        TRoundedContainer(
          backgroundColor: isDark ? TColors.darkGrey : TColors.grey,
          padding: EdgeInsets.all(TSizes.padding_small),
          child: Column(
            children: [
              Row(
                children: [
                  TSectionHeading(title: "Variation", showActionButton: false),
                  SizedBox(width: TSizes.spaceBtWItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        children: [
                          /// Actual Price
                          TProductTitleText(title: "Price", smallSize: true),
                          SizedBox(width: TSizes.spaceBtWItems),
                          Text(
                            "\$250",
                            style: Theme.of(context).textTheme.titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          /// Sale Price
                          SizedBox(width: TSizes.spaceBtWItems),
                          ///
                          TProductPriceText(price: '150'),
                        ],
                      ),
                      Row(
                        children: [
                          TProductTitleText(title: "Status"),
                          SizedBox(width: TSizes.spaceBtWItems / 2),

                          Text(
                            "In Stock ",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              /// Variation Description
              TProductTitleText(
                title:
                    "this is the description of the Product and it can go up to max 4 lines.",
                maxLines: 4,
                smallSize: true,
              ),
            ],
          ),
        ),
        SizedBox(height: TSizes.spaceBtWItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: "Colors",showActionButton:false,),
            SizedBox(height: TSizes.spaceBtWItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: "red", selected: false,onSelected: (value){},),
                TChoiceChip(text: "green", selected: true,onSelected: (value){},),
                TChoiceChip(text: "yellow", selected: false,onSelected: (value){},),
              ],
            )
          ],
        ),
        SizedBox(height: TSizes.spaceBtWItems),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TSectionHeading(title: "Sizes",showActionButton:false,),
            SizedBox(height: TSizes.spaceBtWItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: "Eu 34", selected: false,onSelected: (value){},),
                TChoiceChip(text: "Eu 35", selected: true,onSelected: (value){},),
                TChoiceChip(text: "Eu 36", selected: false,onSelected: (value){},),
              ],
            )
          ],
        ),
      ],
    );
  }
}
