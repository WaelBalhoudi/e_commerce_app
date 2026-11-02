import 'package:e_commerce_app/features/shop/screens/home/widgets/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce_app/features/shop/screens/product_review/product_review.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import 'widgets/product_image_slider.dart';
import 'widgets/product_meta_data.dart';
import 'widgets/rating_and_share.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = THelperFunction.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: TBottomAddToCart(isDark: isDark,),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            /// 1-product image slider
            ProductImageSlider(isDark: isDark),

            /// 2-product details
            Padding(
              padding: EdgeInsets.only(
                right: TSizes.defaultSpace,
                left: TSizes.defaultSpace,
                bottom: TSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  /// - Rating & Share
                  TRatingAndShare(),
                  /// - Price, Title, Stock, & Brand
                  TProductMetaData(),
                  SizedBox(height: TSizes.spaceBtWSections/2,),

                  /// - Attributes
                  ProductAttributes(),


                  /// - Checkout Button
                  SizedBox(height: TSizes.spaceBtWSections/2,),

                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child:Text("Checkout"))),
                  /// - Description
                  SizedBox(height: TSizes.spaceBtWItems),
                  
                  TSectionHeading(title: "Description",showActionButton: false ,),
                  SizedBox(height: TSizes.spaceBtWItems),
                  /// - Reviews
                  ReadMoreText(
                      "Don't worry sometimes people forget too, enter your email and we'll send you a password reset link!",
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimExpandedText: " Less",
                    trimCollapsedText: " Show more",
                    moreStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w800),
                 ),
                  SizedBox(height: TSizes.spaceBtWItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TSectionHeading(title: "Reviews(168)",onPressed: (){},showActionButton: false,),
                      IconButton(onPressed: (){  Get.to(()=>ProductReview());}, icon: Icon(Iconsax.arrow_right_3,size: 18,))
                    ],
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



