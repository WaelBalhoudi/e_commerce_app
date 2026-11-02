import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TSearchContainer extends StatelessWidget {
  final String text;
  final IconData? icon;
  final EdgeInsets padding;
  final bool? showBackground, showBorder;
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon=Iconsax.search_normal,
    this.showBackground =true,
    this.showBorder = true,
     this.padding= const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace) ,
  });

  @override
  Widget build(BuildContext context) {
    final dark=THelperFunction.isDarkMode(context);
    return Padding(
      padding:  padding,
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding:EdgeInsets.all(TSizes.padding_medium),
        decoration: BoxDecoration(
          color: showBackground!
              ? (dark ? TColors.dark : TColors.light)
              : Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder! ? Border.all(color: TColors.grey.withOpacity(.5)) :null,
        ),
        child: Row(
          children: [
            Icon(icon,color: TColors.darkGrey,),
            SizedBox( width: TSizes.spaceBtWItems),
            Text(
                text,
                style: Theme.of(context).textTheme.bodySmall!.apply(color: Colors.grey)
            ),

          ],
        ),
      ),
    );
  }
}
