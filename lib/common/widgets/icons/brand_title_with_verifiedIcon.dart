import 'package:e_commerce_app/common/widgets/texts/brand_title_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class TBrandTitleWithVerifiedIcon extends StatelessWidget {
  const TBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
     this.maxLines=1,
    this.textColor,
    this.iconColor=TColors.primary,
    this.brandTextSize=TextSizes.small,
    this.textAlign=TextAlign.center,
  });

  final String title;
  final int? maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: TBrandTitleText(title: title, maxLines: 1,brandTextSize: brandTextSize,)),
        SizedBox(width: TSizes.padding_x_small),
        Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXS),
      ],
    );
  }
}

