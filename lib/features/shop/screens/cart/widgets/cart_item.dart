import 'package:e_commerce_app/common/widgets/icons/brand_title_with_verifiedIcon.dart';
import 'package:e_commerce_app/common/widgets/images/round_image.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TRoundImage(
          imageUrl: TImages.productImage1,
          width: 60,
          height: 60,
          padding: EdgeInsets.all(TSizes.padding_small),
          backgroundColor:
          dark ? TColors.darkGrey : TColors.light,
        ),
        SizedBox(width: TSizes.spaceBtWItems,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,

            children: [
              TBrandTitleWithVerifiedIcon(title: 'Nike'),
              Flexible(child: TProductTitleText(title: "Black Sports shoes",maxLines: 1,)),
              Text.rich(TextSpan(
                  children: [
                    TextSpan(text: "Color ",style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Green',style: Theme.of(context).textTheme.bodyLarge),
                    TextSpan(text: "Size",style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'UK 08',style: Theme.of(context).textTheme.bodyLarge),
                  ]
              ))
            ],
          ),
        )
      ],
    );
  }
}