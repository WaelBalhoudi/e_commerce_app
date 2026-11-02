import 'package:e_commerce_app/common/widgets/layouts/gird_layout.dart';
import 'package:e_commerce_app/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:e_commerce_app/features/shop/screens/all_products/all_products.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/categories.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/primary_header_container.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/search_container.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [

                  /// App Bar
                  THomeAppBar(),
                  SizedBox(height: TSizes.spaceBtWSections),

                  /// Search Bar
                  TSearchContainer(text: 'Search in Store'),
                  ////Categories
                  Categories(),
                  SizedBox(height: TSizes.spaceBtWItems),

                ],
              ),
            ),

            ///Blog
            Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    TPromoSlider(banners: [
                      TImages.bannerImage1,
                      TImages.bannerImage2,
                      TImages.bannerImage3,
                    ]),
                    SizedBox(height: TSizes.spaceBtWSections,),

                    TSectionHeading(title: "Popular Products",onPressed: ()=>Get.to(AllProducts()),),
                    SizedBox(height: TSizes.spaceBtWSections,),
                    TGridLayout(itemCount: 3, itemBuilder: (_,index)=>TProductCardVertical(),),


                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
