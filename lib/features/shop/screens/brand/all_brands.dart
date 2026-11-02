import 'package:e_commerce_app/common/widgets/appBar/appbar.dart';
import 'package:e_commerce_app/common/widgets/layouts/gird_layout.dart';
import 'package:e_commerce_app/features/shop/screens/brand/brand.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/brand_card.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllBrands extends StatelessWidget {
  const AllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text("Brands", style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(children: [
            TSectionHeading(title: "All Brands",showActionButton: false,),
            SizedBox(height: TSizes.spaceBtWItems,),
            TGridLayout(itemCount: 10,mainAxisExtent: 80, itemBuilder: (context,index)=>TBrandCard( showBorder: true,onTap: ()=>Get.to(Brand()),))
          ]),
        ),
      ),
    );
  }
}
