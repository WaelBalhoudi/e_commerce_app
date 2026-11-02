import 'package:e_commerce_app/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce_app/features/shop/screens/store/widgets/brand_card.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key,
    required this.isDark, required this.images,
  });

  final bool isDark;
  final List<String> images;


  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtWItems),
      padding: const EdgeInsets.all(TSizes.padding_medium),
      child: Column(
        children: [
          ///brand with Products count
          TBrandCard(
            showBorder: false,

          ),

          ///brand top 3 product images
          Row(
            children:images.map((image)=>brandTopProductImageWidget(image, context)).toList()
            ,
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image,context){
    return  Expanded(
      child: TRoundedContainer(
        height: 100,
        backgroundColor: isDark?TColors.darkGrey:TColors.light,
        margin: const EdgeInsets.only(right: TSizes.padding_small),
        padding: const EdgeInsets.all(TSizes.padding_medium),
        child:  Image(fit: BoxFit.contain, image: AssetImage(image),),
      ),
    );

  }
}