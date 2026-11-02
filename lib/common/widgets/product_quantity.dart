import 'package:e_commerce_app/common/widgets/icons/curclar_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TProductQuantity extends StatelessWidget {
  const TProductQuantity({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TCircularIcon(
          icon: Iconsax.minus,
          width: 32,
          height: 32,
          color: dark? TColors.textWhite:TColors.black,
          backgroundColor: dark? TColors.darkGrey:TColors.light,

        ),
        SizedBox(width: TSizes.spaceBtWItems),
        Text('2',style: Theme.of(context).textTheme.titleSmall,),
        SizedBox(width: TSizes.spaceBtWItems),
        TCircularIcon(
          icon: Iconsax.add,
          width: 32,
          height: 32,
          color:TColors.textWhite,
          backgroundColor:TColors.primary,

        ),
      ],
    );
  }
}
