import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
            width: 120,
            image: AssetImage(dark? TImages.lightAppLogo : TImages.darkAppLogo)
        ),
        Text(TTexts.loginTitle,style: Theme.of(context).textTheme.headlineMedium,),
        SizedBox(height: TSizes.padding_small),
        Text(TTexts.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium,)

      ],
    );
  }
}