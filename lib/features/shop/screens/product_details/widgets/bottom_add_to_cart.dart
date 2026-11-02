import 'package:e_commerce_app/common/widgets/icons/curclar_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBottomAddToCart extends StatelessWidget {
  const TBottomAddToCart({super.key, required this.isDark});

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: TSizes.defaultSpace,
        vertical: TSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: isDark ? TColors.darkGrey : TColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              TCircularIcon(
                icon: Iconsax.minus,
                backgroundColor: TColors.grey,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
              SizedBox(width: TSizes.spaceBtWItems),
              Text("2", style: Theme.of(context).textTheme.titleSmall),
              SizedBox(width: TSizes.spaceBtWItems),
              TCircularIcon(
                icon: Iconsax.add,
                backgroundColor: TColors.black,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
            ],
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(TSizes.padding_small),
                backgroundColor: Colors.black,
                side: BorderSide(color: Colors.black)

              ),
            child:Row(
              children: [
                Icon(Iconsax.shopping_cart,color: Colors.white,),
                SizedBox(width: 5,),
                Text("Add to Cart")
              ],
            ),

          ),
        ],
      ),
    );
  }
}
