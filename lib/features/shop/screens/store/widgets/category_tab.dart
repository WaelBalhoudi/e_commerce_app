import 'package:e_commerce_app/common/widgets/layouts/gird_layout.dart';
import 'package:e_commerce_app/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/brand_showcase.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [

        Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              ///Brands
              TBrandShowcase(
                isDark: isDark,
                images: [
                  TImages.productImage1,
                  TImages.productImage2,
                  TImages.productImage3,
                ],
              ),
              SizedBox(height: TSizes.spaceBtWItems),

              TSectionHeading(title: "You might like", onPressed: () => {}),
              SizedBox(height: TSizes.spaceBtWSections),
              TGridLayout(
                itemCount: 3,
                itemBuilder: (_, index) => TProductCardVertical(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
