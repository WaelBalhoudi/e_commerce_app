import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/round_image.dart';
import 'package:e_commerce_app/common/widgets/product/product_card/product_card_horizontal.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategories extends StatelessWidget {
  const SubCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Sport", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TRoundImage(
                imageUrl: TImages.bannerImage1,
                width: double.infinity,
                applyImageRadius: true,
              ),
              SizedBox(height: TSizes.spaceBtWSections),

              /// Sub-Categories
              Column(
                children: [
                  TSectionHeading(title: "Sports shirts"),
                  SizedBox(height: TSizes.spaceBtWItems / 2),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_,__)=>SizedBox(width: TSizes.spaceBtWItems,),
                      itemBuilder: (_,index)=>ProductCardHorizontal(),

                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
