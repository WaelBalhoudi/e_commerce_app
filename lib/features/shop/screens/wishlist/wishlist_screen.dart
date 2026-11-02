import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/icons/curclar_icon.dart';
import 'package:e_commerce_app/common/widgets/layouts/gird_layout.dart';
import 'package:e_commerce_app/common/widgets/product/product_card/product_card_vertical.dart';
import 'package:e_commerce_app/features/shop/screens/home/home.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text("WishList",style: Theme.of(context).textTheme.headlineMedium,),
        actions: [
          IconButton(onPressed: ()=>Get.to(Home()), icon: Icon(Iconsax.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  TSizes.defaultSpace),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TGridLayout(
                itemCount: 5,
                itemBuilder: (_, index) => TProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
